import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swifty_companion/utils/logger/logger.dart';
import 'package:http/retry.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(ref.watch(loggerProvider));
}

class AuthRepository {
  static final _exchangeTokenUrl = Uri.parse(
    'https://api.intra.42.fr/oauth/token',
  );
  static final _apiBaseUrl = 'https://api.intra.42.fr';
  static final _redirectUri =
      'smatsuoswiftycompanion://smatsuo.swifty.companion/oauth-granted';
  static final storage = FlutterSecureStorage();
  static const _accessTokenStorageKey = 'access_token';
  static const _refreshTokenStorageKey = 'refresh_token';
  final client = RetryClient(
    http.Client(),
    when: (res) => res.statusCode == 429,
    onRetry: (req, _, retryCount) async {
      Logger().w(
        'Rate limit exceeded. Retrying request (attempt $retryCount): ${req.url}',
      );
    },
  );
  final Logger _logger;

  AuthRepository(Logger logger) : _logger = logger;

  Future<String?> get _accessToken async {
    return await storage.read(key: _accessTokenStorageKey);
  }

  Future<String?> get _refreshToken async {
    return await storage.read(key: _refreshTokenStorageKey);
  }

  Future<Uri?> getSigninUrl() async {
    if (await _isAccessTokenAvailable()) {
      _logger.i('User already signed in. Skipping signin.');
      return null;
    }

    return Uri.parse(dotenv.env['INTRA_API_AUTHORIZE_URL']!);
  }

  Future<bool> _isAccessTokenAvailable() async {
    if (await _accessToken == null) {
      return false;
    }

    final res = await client.get(
      Uri.parse('$_apiBaseUrl/oauth/token/info'),
      headers: {'Authorization': 'Bearer ${await _accessToken}'},
    );

    if (res.statusCode == 200) {
      return true;
    }

    if (res.statusCode == 401) {
      _logger.d(
        'Access token might be expired. Trying to refresh token: ${res.body}',
      );
      try {
        await _tryRefreshAccessToken();
        return true;
      } catch (e) {
        _logger.e('Failed to refresh access token: $e');
        return false;
      }
    }

    await signOut();
    return false;
  }

  Future<void> fetchToken(String? code) async {
    if (await _isAccessTokenAvailable()) {
      _logger.i('Access token already exists. Skipping fetch.');
      return;
    }

    if (code == null) {
      _logger.e('failed to authorize: code is null');
      throw Exception('Authorization code is null');
    }

    final res = await client.post(
      _exchangeTokenUrl,
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
      body: {
        'grant_type': 'authorization_code',
        'client_id': dotenv.env['INTRA_API_CLIENT_ID']!,
        'client_secret': dotenv.env['INTRA_API_CLIENT_SECRET']!,
        'code': code,
        'redirect_uri': _redirectUri,
      },
    );
    if (res.statusCode != 200) {
      _logger.e('Failed to fetch access token: ${res.body}');
      throw Exception('Failed to fetch access token');
    }

    await storage.write(
      key: _accessTokenStorageKey,
      value: json.decode(res.body)['access_token'],
    );
    await storage.write(
      key: _refreshTokenStorageKey,
      value: json.decode(res.body)['refresh_token'],
    );
  }

  Future<void> _tryRefreshAccessToken() async {
    _logger.i(
      'Attempting to refresh access token: refreshToken=${await _refreshToken}, accessToken=${await _accessToken}',
    );
    if (await _refreshToken == null) {
      _logger.e('No refresh token found. Cannot refresh access token.');
      throw Exception('No refresh token found');
    }
    final res = await client.post(
      _exchangeTokenUrl,
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
      body: {
        'grant_type': 'refresh_token',
        'client_id': dotenv.env['INTRA_API_CLIENT_ID']!,
        'client_secret': dotenv.env['INTRA_API_CLIENT_SECRET']!,
        'refresh_token': await _refreshToken,
        'redirect_uri': _redirectUri,
      },
    );
    if (res.statusCode != 200) {
      _logger.e('Failed to refresh access token: ${res.body}');
      signOut();
      throw Exception('Failed to refresh access token');
    }

    _logger.i('Access token refreshed successfully: ${res.body}');

    await storage.write(
      key: _accessTokenStorageKey,
      value: json.decode(res.body)['access_token'],
    );
    await storage.write(
      key: _refreshTokenStorageKey,
      value: json.decode(res.body)['refresh_token'],
    );
  }

  Future<http.Response> requestAuthorizedData(String uri) async {
    _logger.d('accessToken: ${await _accessToken}');
    if (!await _isAccessTokenAvailable()) {
      _logger.e('No access token found. User might not be signed in.');
      throw Exception('No access token found');
    }

    final res = await client.get(
      Uri.parse('$_apiBaseUrl/v2$uri'),
      headers: {'Authorization': 'Bearer ${await _accessToken}'},
    );

    if (res.statusCode == 401) {
      _logger.e(
        'Unauthorized request. Access token might be invalid or expired: ${res.body}',
      );
      await signOut();
      throw UnauthorizedException('Unauthorized request');
    }

    return res;
  }

  Future<void> signOut() async {
    await storage.delete(key: _accessTokenStorageKey);
    await storage.delete(key: _refreshTokenStorageKey);
  }
}

class UnauthorizedException implements Exception {
  final String message;

  UnauthorizedException(this.message);

  @override
  String toString() => 'UnauthorizedException: $message';
}
