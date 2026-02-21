import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/data/repository/auth_repository.dart';
import 'package:swifty_companion/data/repository/profile_repository.dart';
import 'package:swifty_companion/theme.dart';
import 'package:swifty_companion/ui/profile/widgets/profile_viewer.dart';
import 'package:swifty_companion/utils/logger/logger.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    this.logger.i('building profile screen');
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          ref.watch(authRepositoryProvider).signOut();
        }
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(text: 'Skills', icon: Icon(Icons.psychology)),
              Tab(text: 'Projects', icon: Icon(Icons.assignment_turned_in)),
            ],
          ),
          body: Center(
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
                  } else {
                    this.logger.e(
                      'failed to load profile: ${asyncSnapshot.error}',
                    );
                    Fluttertoast.showToast(
                      msg: 'Something went wrong. Please sign in again.',
                    );
                  }
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ref.watch(authRepositoryProvider).signOut();
                    context.goNamed('home');
                  });
                  return CircularProgressIndicator();
                }

                final profile = asyncSnapshot.data;

                if (profile == null) {
                  Fluttertoast.showToast(
                    msg: 'No profile data found. Please sign in again.',
                  );
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ref.watch(authRepositoryProvider).signOut();
                    context.goNamed('home');
                  });
                  return CircularProgressIndicator();
                }

                return ProfileViewer(profile: profile);
              },
            ),
          ),
        ),
      ),
    );
  }
}

@Preview(name: 'ProfileScreen Preview', theme: previewTheme)
Widget profileScreenPreview() {
  return ProfileScreen();
}
