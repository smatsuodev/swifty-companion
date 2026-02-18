import 'package:flutter/material.dart';
import 'package:swifty_companion/domain/models/cursus_user_model.dart';

class LevelIndicator extends StatelessWidget {
  final List<CursusUserModel> cursusUsers;
  final String? cursusSlug;
  final Function(String?) onCursusChanged;

  const LevelIndicator({
    super.key,
    required this.cursusUsers,
    required this.cursusSlug,
    required this.onCursusChanged,
  });

  @override
  Widget build(BuildContext context) {
    final cursus = cursusUsers.firstWhere(
      (cu) => cu.cursus.slug == cursusSlug,
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
                      if (cursusSlug != null)
                        DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: cursusSlug,
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
                            onChanged: onCursusChanged,
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
