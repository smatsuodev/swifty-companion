import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:swifty_companion/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: _launchOAuthPage,
              child: const Text('SIGN IN'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchOAuthPage() async {
    final Uri _url = Uri.parse(
      'https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-3cf412bec1db5f725cbdd061f55deba1ff6ed3453e95f35ef9034c29a4df03b7&redirect_uri=smatsuoswiftycompanion%3A%2F%2Fsmatsuo.swifty.companion%2Foauth-granted&response_type=code',
    );

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

@Preview(name: 'LoginScreen Preview', theme: previewTheme)
Widget loginScreenPreview() {
  return LoginScreen();
}
