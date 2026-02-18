import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swifty_companion/data/repository/auth_repository.dart';
import 'package:swifty_companion/domain/models/profile_model.dart';
import 'package:swifty_companion/utils/logger/logger.dart';

part 'profile_repository.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) => ProfileRepository(
  ref.watch(authRepositoryProvider),
  ref.watch(loggerProvider),
);

class ProfileRepository {
  final AuthRepository _authRepository;
  final Logger _logger;

  const ProfileRepository(AuthRepository authRepository, Logger logger)
    : _authRepository = authRepository,
      _logger = logger;

  Future<ProfileModel?> fetchProfile() async {
    final res = await _authRepository.requestAuthorizedData('/me');
    if (res.statusCode != 200) {
      _logger.e('Failed to fetch profile data: ${res.body}');
      throw Exception('Failed to fetch profile data');
    }

    return ProfileModel.fromJson(json.decode(res.body));
  }
}
