import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:swifty_companion/domain/models/project_user_model.dart';

class ProjectsListView extends StatelessWidget {
  final List<ProjectUserModel> projectUsers;

  const ProjectsListView({super.key, required this.projectUsers});

  @override
  Widget build(BuildContext context) {
    final latestProjectUsers = projectUsers.sorted(
      (a, b) => b.updatedAt.compareTo(a.updatedAt),
    );

    return ListView.builder(
      itemBuilder: (context, index) {
        final projectUser = latestProjectUsers[index];
        final validated = projectUser.validated == true;
        return ListTile(
          title: Text(projectUser.project.name),
          trailing: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 1.0, right: 1.0),
                    child: Icon(
                      validated ? Icons.check : Icons.close,
                      size:
                          Theme.of(context).textTheme.bodyMedium?.fontSize ??
                          14,
                      color: validated ? Colors.green : Colors.red,
                    ),
                  ),
                ),
                TextSpan(
                  text: projectUser.finalMark.toString(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: validated
                        ? Colors.green
                        : Theme.of(context).colorScheme.error,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: latestProjectUsers.length,
      shrinkWrap: true,
    );
  }
}
