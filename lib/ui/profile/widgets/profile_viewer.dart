import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/domain/models/profile_model.dart';
import 'package:swifty_companion/ui/profile/widgets/level_indicator.dart';

class ProfileViewer extends HookConsumerWidget {
  final ProfileModel profile;

  const ProfileViewer({super.key, required this.profile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);
    final cursusSlug = useState(profile.cursusUsers.firstOrNull?.cursus.slug);

    return Column(
      mainAxisAlignment: .center,
      spacing: 8.0,
      children: [
        CircleAvatar(
          radius: mediaQuery.size.width * 0.15,
          backgroundImage: NetworkImage(profile.image.link),
        ),
        Text(profile.login, style: TextStyle(fontSize: 24)),
        SizedBox(
          width: mediaQuery.size.width * 0.75,
          child: Column(
            children: [
              LevelIndicator(
                cursusUsers: profile.cursusUsers,
                cursusSlug: cursusSlug.value,
                onCursusChanged: (slug) {
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
