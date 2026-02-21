// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coalition_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(coalitionRepository)
final coalitionRepositoryProvider = CoalitionRepositoryProvider._();

final class CoalitionRepositoryProvider
    extends
        $FunctionalProvider<
          CoalitionRepository,
          CoalitionRepository,
          CoalitionRepository
        >
    with $Provider<CoalitionRepository> {
  CoalitionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'coalitionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$coalitionRepositoryHash();

  @$internal
  @override
  $ProviderElement<CoalitionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CoalitionRepository create(Ref ref) {
    return coalitionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CoalitionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CoalitionRepository>(value),
    );
  }
}

String _$coalitionRepositoryHash() =>
    r'e489ab6c6c33b1d9199991d3873b3c6e35647d8f';
