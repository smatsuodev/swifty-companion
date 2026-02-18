// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(routes)
final routesProvider = RoutesProvider._();

final class RoutesProvider
    extends $FunctionalProvider<List<GoRoute>, List<GoRoute>, List<GoRoute>>
    with $Provider<List<GoRoute>> {
  RoutesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routesHash();

  @$internal
  @override
  $ProviderElement<List<GoRoute>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<GoRoute> create(Ref ref) {
    return routes(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<GoRoute> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<GoRoute>>(value),
    );
  }
}

String _$routesHash() => r'1e4bd39e8e949b5a33be9b3cd3830aa72ba4ee18';
