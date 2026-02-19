import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/data/repository/auth_repository.dart';
import 'package:swifty_companion/theme.dart';
import 'package:swifty_companion/utils/logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class SigninScreen extends ConsumerWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    final url = authRepository.getSigninUrl();
    if (url == null) {
      WidgetsBinding.instance.addPostFrameCallback((ctx) {
        this.logger.i('user already signed in, redirecting to profile');
        context.goNamed('profile');
      });

      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Sign in to intra')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () async {
                try {
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                } catch (e) {
                  this.logger.e('failed to launch URL: $e');
                  Fluttertoast.showToast(
                    msg: 'Failed to launch browser. Please try again.',
                  );
                }
              },
              child: const Text('SIGN IN'),
            ),
          ],
        ),
      ),
    );
  }
}

@Preview(name: 'SigninScreen Preview', theme: previewTheme)
Widget signinScreenPreview() {
  return SigninScreen();
}
