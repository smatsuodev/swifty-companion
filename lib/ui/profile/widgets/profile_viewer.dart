import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/domain/models/profile_model.dart';
import 'package:swifty_companion/ui/profile/widgets/level_indicator.dart';
import 'package:collection/collection.dart';
import 'package:swifty_companion/ui/profile/widgets/projects_list_view.dart';
import 'package:swifty_companion/ui/profile/widgets/skill_chart.dart';
import 'package:swifty_companion/utils/logger/logger.dart';

class ProfileViewer extends HookConsumerWidget {
  final ProfileModel profile;

  const ProfileViewer({super.key, required this.profile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);
    final cursusSlug = useState(profile.cursusUsers.firstOrNull?.cursus.slug);
    final cursusId = profile.cursusUsers
        .firstWhereOrNull((cu) => cu.cursus.slug == cursusSlug.value)
        ?.cursus
        .id;
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
    final completedProjects = useMemoized(
      () => profile.projectsUsers
          .where(
            (pu) => pu.status == .finished && pu.cursusIds.contains(cursusId),
          )
          .toList(),
      [profile.projectsUsers, cursusId],
    );

    return SafeArea(
      child: Column(
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
          if (cursusUser != null)
            AspectRatio(
              aspectRatio: 1.8,
              child: SkillChart(
                cursusSlug: cursusUser.cursus.slug,
                skills: cursusUser.skills,
              ),
            ),
          Expanded(child: ProjectsListView(projectUsers: completedProjects)),
        ],
      ),
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
