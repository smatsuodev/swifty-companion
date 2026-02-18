import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/data/repository/auth_repository.dart';
import 'package:swifty_companion/data/repository/profile_repository.dart';
import 'package:swifty_companion/theme.dart';
import 'package:swifty_companion/ui/profile/widgets/level_indicator.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Your Profile')),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: FutureBuilder(
            future: ref.watch(profileRepositoryProvider).fetchProfile(),
            builder: (context, asyncSnapshot) {
              if (asyncSnapshot.connectionState == .waiting) {
                return const CircularProgressIndicator();
              } else if (asyncSnapshot.hasError) {
                if (asyncSnapshot.error is UnauthorizedException) {
                  Fluttertoast.showToast(
                    msg: 'Session expired. Please sign in again.',
                  );
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    context.goNamed('home');
                  });
                }
                return Text('Error: ${asyncSnapshot.error}');
              }

              final profile = asyncSnapshot.data;
              if (profile == null) {
                return const Text('No profile data available');
              }

              return Column(
                mainAxisAlignment: .center,
                spacing: 8.0,
                children: [
                  CircleAvatar(
                    radius: mediaQuery.size.width * 0.15,
                    backgroundImage: NetworkImage(profile.image.link),
                  ),
                  Text(profile.login, style: TextStyle(fontSize: 24)),
                  Container(
                    width: mediaQuery.size.width * 0.75,
                    child: Column(
                      children: [
                        LevelIndicator(cursusUsers: profile.cursusUsers),
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: .spaceEvenly,
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
            },
          ),
        ),
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

@Preview(name: 'ProfileScreen Preview', theme: previewTheme)
Widget profileScreenPreview() {
  return ProfileScreen();
}
