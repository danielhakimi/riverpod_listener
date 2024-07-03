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
String _$mockScannerHash() => r'acc60c482647d5288cad3403694ca90beca90ed6';

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
String _$connectionHash() => r'0d85331dc60235f1afee98b51bdac0a7d433cd71';

/// See also [Connection].
@ProviderFor(Connection)
final connectionProvider =
    NotifierProvider<Connection, ConnectionState>.internal(
  Connection.new,
  name: r'connectionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$connectionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Connection = Notifier<ConnectionState>;
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
