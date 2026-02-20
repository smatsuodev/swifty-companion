import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphic/graphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/domain/models/cursus_user_model.dart';
import 'package:swifty_companion/domain/models/profile_model.dart';
import 'package:swifty_companion/ui/profile/widgets/level_indicator.dart';
import 'package:collection/collection.dart';
import 'package:swifty_companion/utils/logger/logger.dart';

class ProfileViewer extends HookConsumerWidget {
  final ProfileModel profile;

  const ProfileViewer({super.key, required this.profile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);
    final cursusSlug = useState(profile.cursusUsers.firstOrNull?.cursus.slug);
    final cursusUser = profile.cursusUsers.firstWhereOrNull(
      (cu) => cu.cursus.slug == cursusSlug.value,
    );
    final selectedTitleId = useMemoized(
      () => profile.titlesUsers.firstWhereOrNull((u) => u.selected)?.title_id,
      [profile.titlesUsers],
    );
    final selectedTitle = useMemoized(
      () => profile.titles
          .firstWhereOrNull((t) => t.id == selectedTitleId)
          ?.name
          .replaceAll('%login', profile.login),
      [profile.titles, selectedTitleId, profile.login],
    );
    final skills = cursusUser?.skills;
    final skillsChart = skills != null
        ? Chart<CursusUserSkillModel>(
            key: ValueKey('skills-chart-${cursusSlug.value}'),
            data: skills,
            variables: {
              'name': Variable(
                accessor: (s) {
                  this.logger.d('name: ${s.name}');
                  return '${s.name}\n${s.level.toStringAsFixed(2)}';
                },
              ),
              'level': Variable(
                accessor: (s) {
                  this.logger.d('level: ${s.level}');
                  return s.level as num;
                },
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
                  maxWidth: 100,
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
          )
        : null;

    return Column(
      mainAxisAlignment: .center,
      spacing: 8.0,
      children: [
        CircleAvatar(
          radius: mediaQuery.size.width * 0.15,
          backgroundImage: NetworkImage(profile.image.link),
        ),
        Column(
          children: [
            Text(profile.displayName, style: TextStyle(fontSize: 24)),
            Text(
              selectedTitle ?? profile.login,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        SizedBox(
          width: mediaQuery.size.width * 0.75,
          child: Column(
            children: [
              LevelIndicator(
                cursusUsers: profile.cursusUsers,
                cursusSlug: cursusSlug.value,
                onCursusChanged: (slug) {
                  this.logger.d('Cursus changed: $slug');
                  cursusSlug.value = slug;
                },
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  crossAxisAlignment: .center,
                  children: [
                    _ProfileMetric(
                      label: '₳',
                      value: profile.wallet.toString(),
                    ),
                    _ProfileMetric(
                      label: 'Ev.P',
                      value: profile.correctionPoint.toString(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (skillsChart != null)
          AspectRatio(aspectRatio: 1.8, child: skillsChart),
      ],
    );
  }
}

class _ProfileMetric extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileMetric({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$label ',
        style: TextStyle(
          fontSize: 20,
          fontWeight: .bold,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        children: [
          TextSpan(
            text: value,
            style: TextStyle(fontSize: 16, fontWeight: .normal),
          ),
        ],
      ),
    );
  }
}
