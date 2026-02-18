import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swifty_companion/utils/logger/logger.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(ref.watch(loggerProvider));
}

class AuthRepository {
  static final _exchangeTokenUrl = Uri.parse(
    'https://api.intra.42.fr/oauth/token',
  );
  static final _apiBaseUrl = 'https://api.intra.42.fr/v2';
  static String? _accessToken;

  final Logger _logger;

  AuthRepository(Logger logger) : _logger = logger;

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

  Future<http.Response> requestAuthorizedData(String uri) async {
    _logger.d('accessToken: $_accessToken');
    if (_accessToken == null) {
      _logger.e('No access token found. User might not be signed in.');
      throw Exception('No access token found');
    }

    final res = await http.get(
      Uri.parse('$_apiBaseUrl$uri'),
      headers: {'Authorization': 'Bearer $_accessToken'},
    );

    if (res.statusCode == 401) {
      _logger.e(
        'Unauthorized request. Access token might be invalid or expired.',
      );
      _accessToken = null;
      throw UnauthorizedException('Unauthorized request');
    }

    return res;
  }

  void signOut() {
    _accessToken = null;
  }
}

class UnauthorizedException implements Exception {
  final String message;

  UnauthorizedException(this.message);

  @override
  String toString() => 'UnauthorizedException: $message';
}
