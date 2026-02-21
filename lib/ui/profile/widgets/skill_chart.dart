import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:swifty_companion/domain/models/cursus_user_model.dart';

class SkillChart extends StatelessWidget {
  final String cursusSlug;
  final List<CursusUserSkillModel> skills;

  const SkillChart({super.key, required this.cursusSlug, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Chart<CursusUserSkillModel>(
      key: ValueKey('skills-chart-$cursusSlug'),
      data: skills,
      variables: {
        'name': Variable(
          accessor: (s) => '${s.name}\n${s.level.toStringAsFixed(2)}',
        ),
        'level': Variable(
          accessor: (s) => s.level as num,
          scale: LinearScale(min: 0, max: 20, tickCount: 5),
        ),
      },
      marks: [
        LineMark(
          position: Varset('name') * Varset('level'),
          color: ColorEncode(value: Color.fromRGBO(0, 192, 193, 1)),
          shape: ShapeEncode(value: BasicLineShape(loop: true)),
        ),
        AreaMark(
          position: Varset('name') * Varset('level'),
          color: ColorEncode(value: Color.fromRGBO(0, 192, 193, 0.5)),
          shape: ShapeEncode(value: BasicAreaShape(loop: true)),
        ),
      ],
      coord: PolarCoord(endRadius: 0.75),
      axes: [
        Defaults.circularAxis
          ..label = LabelStyle(
            maxWidth: 80,
            textAlign: .center,
            span: (text) => TextSpan(
              children: [
                TextSpan(
                  text: '${text.split('\n')[0]}\n',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: .bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                TextSpan(
                  text: text.split('\n')[1],
                  style: TextStyle(
                    fontSize: 10,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
        Defaults.radialAxis..label = null,
      ],
    );
  }
}
