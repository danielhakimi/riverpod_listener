// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen_and_trigger_poc.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listenAndTriggerHash() => r'e05a73aa58f5ecbe575c113e942bcd0cce10c349';

/// See also [listenAndTrigger].
@ProviderFor(listenAndTrigger)
final listenAndTriggerProvider = Provider<ListenAndTrigger>.internal(
  listenAndTrigger,
  name: r'listenAndTriggerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listenAndTriggerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListenAndTriggerRef = ProviderRef<ListenAndTrigger>;
String _$mockScannerHash() => r'97c87d844404d796ab01574303120bb51ce1a7d2';

/// See also [mockScanner].
@ProviderFor(mockScanner)
final mockScannerProvider = StreamProvider<String>.internal(
  mockScanner,
  name: r'mockScannerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mockScannerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MockScannerRef = StreamProviderRef<String>;
String _$connectionServiceHash() => r'7c49badcb2b2177367a72a24c0711bff91e65d06';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ConnectionService extends BuildlessNotifier<ConnectionState> {
  late final dynamic serviceUuid;

  ConnectionState build(
    dynamic serviceUuid,
  );
}

/// See also [ConnectionService].
@ProviderFor(ConnectionService)
const connectionServiceProvider = ConnectionServiceFamily();

/// See also [ConnectionService].
class ConnectionServiceFamily extends Family<ConnectionState> {
  /// See also [ConnectionService].
  const ConnectionServiceFamily();

  /// See also [ConnectionService].
  ConnectionServiceProvider call(
    dynamic serviceUuid,
  ) {
    return ConnectionServiceProvider(
      serviceUuid,
    );
  }

  @override
  ConnectionServiceProvider getProviderOverride(
    covariant ConnectionServiceProvider provider,
  ) {
    return call(
      provider.serviceUuid,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'connectionServiceProvider';
}

/// See also [ConnectionService].
class ConnectionServiceProvider
    extends NotifierProviderImpl<ConnectionService, ConnectionState> {
  /// See also [ConnectionService].
  ConnectionServiceProvider(
    dynamic serviceUuid,
  ) : this._internal(
          () => ConnectionService()..serviceUuid = serviceUuid,
          from: connectionServiceProvider,
          name: r'connectionServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$connectionServiceHash,
          dependencies: ConnectionServiceFamily._dependencies,
          allTransitiveDependencies:
              ConnectionServiceFamily._allTransitiveDependencies,
          serviceUuid: serviceUuid,
        );

  ConnectionServiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.serviceUuid,
  }) : super.internal();

  final dynamic serviceUuid;

  @override
  ConnectionState runNotifierBuild(
    covariant ConnectionService notifier,
  ) {
    return notifier.build(
      serviceUuid,
    );
  }

  @override
  Override overrideWith(ConnectionService Function() create) {
    return ProviderOverride(
      origin: this,
      override: ConnectionServiceProvider._internal(
        () => create()..serviceUuid = serviceUuid,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        serviceUuid: serviceUuid,
      ),
    );
  }

  @override
  NotifierProviderElement<ConnectionService, ConnectionState> createElement() {
    return _ConnectionServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConnectionServiceProvider &&
        other.serviceUuid == serviceUuid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, serviceUuid.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConnectionServiceRef on NotifierProviderRef<ConnectionState> {
  /// The parameter `serviceUuid` of this provider.
  dynamic get serviceUuid;
}

class _ConnectionServiceProviderElement
    extends NotifierProviderElement<ConnectionService, ConnectionState>
    with ConnectionServiceRef {
  _ConnectionServiceProviderElement(super.provider);

  @override
  dynamic get serviceUuid => (origin as ConnectionServiceProvider).serviceUuid;
}

String _$connectionStatusStringHash() =>
    r'ad23adc142f8b9c681c9cb5341288d5e0f7340d4';

/// See also [ConnectionStatusString].
@ProviderFor(ConnectionStatusString)
final connectionStatusStringProvider =
    AutoDisposeNotifierProvider<ConnectionStatusString, String>.internal(
  ConnectionStatusString.new,
  name: r'connectionStatusStringProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectionStatusStringHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ConnectionStatusString = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
