import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:swifty_companion/domain/models/cursus_user_model.dart';

class LevelIndicator extends HookWidget {
  final List<CursusUserModel> cursusUsers;

  const LevelIndicator({super.key, required this.cursusUsers});

  @override
  Widget build(BuildContext context) {
    final cursusSlug = useState(cursusUsers.firstOrNull?.cursus.slug);
    final cursus = cursusUsers.firstWhere(
      (cu) => cu.cursus.slug == cursusSlug.value,
      orElse: () => cursusUsers.first,
    );
    final cursusLevelInt = cursus.level.floor();
    final cursusLevelDecimal = cursus.level - cursusLevelInt;

    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: .center,
        crossAxisAlignment: .end,
        spacing: 8.0,
        children: [
          Text(
            cursusLevelInt.toString().padLeft(2, '0'),
            style: TextStyle(fontSize: 32, height: 0.75, fontWeight: .bold),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        '${(cursusLevelDecimal * 100).toStringAsFixed(0)}%',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      if (cursusSlug.value != null)
                        DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: cursusSlug.value,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: .bold,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                            items: cursusUsers
                                .map(
                                  (cu) => DropdownMenuItem(
                                    value: cu.cursus.slug,
                                    child: Text(cu.cursus.name),
                                  ),
                                )
                                .toList(),
                            onChanged: (s) {
                              cursusSlug.value = s;
                            },
                          ),
                        ),
                    ],
                  ),
                ),
                LinearProgressIndicator(
                  minHeight: 10.0,
                  value: cursusLevelDecimal,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
