import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swifty_companion/data/repository/auth_repository.dart';
import 'package:swifty_companion/domain/models/coalition_model.dart';
import 'package:swifty_companion/utils/logger/logger.dart';
import 'package:collection/collection.dart';

part 'coalition_repository.g.dart';

@riverpod
CoalitionRepository coalitionRepository(Ref ref) => CoalitionRepository(
  authRepository: ref.watch(authRepositoryProvider),
  logger: ref.watch(loggerProvider),
);

class CoalitionRepository {
  final AuthRepository _authRepository;
  final Logger _logger;

  const CoalitionRepository({
    required AuthRepository authRepository,
    required Logger logger,
  }) : _authRepository = authRepository,
       _logger = logger;

  Future<List<CoalitionWithCursusSlugModel>> getCoalitionsWithCursusSlug({
    required int userId,
    required List<String> cursusSlugs,
  }) async {
    final results = await Future.wait(
      cursusSlugs.map((slug) async {
        final res = await _authRepository.requestAuthorizedData(
          '/users/$userId/coalitions?filter[cursus]=$slug',
        );
        if (res.statusCode != 200) {
          _logger.e(
            'Failed to fetch coalitions data (${res.statusCode}): ${res.body}',
          );
          throw Exception('Failed to fetch coalitions data');
        }

        final coalitionModelList = CoalitionModelList.fromJson(
          json.decode(res.body),
        );

        return coalitionModelList.coalitions
            .map(
              (c) =>
                  CoalitionWithCursusSlugModel(coalition: c, cursusSlug: slug),
            )
            .toList();
      }),
    );

    _logger.d(
      'Fetched coalitions for user $userId: ${results.flattened.map((c) => (c.coalition.name, c.cursusSlug)).join(', ')}',
    );
    return results.flattened.toList();
  }
}
