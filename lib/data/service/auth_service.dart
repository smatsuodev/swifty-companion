import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swifty_companion/utils/logger/logger.dart';

part 'auth_service.g.dart';

@riverpod
AuthService authService(Ref ref) {
  return AuthService(ref.watch(loggerProvider));
}

class AuthService {
  static final _exchangeTokenUrl = Uri.parse(
    'https://api.intra.42.fr/oauth/token',
  );
  static String? _accessToken;

  final Logger _logger;

  AuthService(Logger logger) : _logger = logger;

  Uri? getSigninUrl() {
    if (_accessToken != null) {
      _logger.i('User already signed in. Skipping signin.');
      return null;
    }

    return Uri.parse(dotenv.env['INTRA_API_AUTHORIZE_URL']!);
  }

  Future<void> fetchToken(String? code) async {
    if (_accessToken != null) {
      _logger.i('Access token already exists. Skipping fetch.');
      return;
    }

    if (code == null) {
      _logger.e('failed to authorize: code is null');
      throw Exception('Authorization code is null');
    }

    final res = await http.post(
      _exchangeTokenUrl,
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
      body: {
        'grant_type': 'authorization_code',
        'client_id': dotenv.env['INTRA_API_CLIENT_ID']!,
        'client_secret': dotenv.env['INTRA_API_CLIENT_SECRET']!,
        'code': code,
        'redirect_uri':
            'smatsuoswiftycompanion://smatsuo.swifty.companion/oauth-granted',
      },
    );
    if (res.statusCode != 200) {
      _logger.e('Failed to fetch access token: ${res.body}');
      throw Exception('Failed to fetch access token');
    }

    // TODO: 永続化する
    _accessToken = json.decode(res.body)['access_token'];
  }
}
