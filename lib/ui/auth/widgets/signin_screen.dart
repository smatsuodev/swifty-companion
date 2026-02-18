import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/data/service/auth_service.dart';
import 'package:swifty_companion/theme.dart';
import 'package:swifty_companion/utils/logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class SigninScreen extends ConsumerWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () async {
                try {
                  final url = authService.getSigninUrl();
                  if (url == null) {
                    context.goNamed('profile');
                    return;
                  }
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

@Preview(name: 'LoginScreen Preview', theme: previewTheme)
Widget loginScreenPreview() {
  return SigninScreen();
}
