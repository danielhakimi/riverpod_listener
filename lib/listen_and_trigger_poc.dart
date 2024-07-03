// ignore_for_file: avoid_print

import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
part 'listen_and_trigger_poc.g.dart';

enum ConnectionState { disconnected, scanning, connecting, connected }

class ListenAndTrigger {
  final Ref ref;

  ListenAndTrigger(this.ref) {
    print('Listener initialised!');
    ref.listen(connectionProvider, (p, n) {
      print('connection provider listener triggered. Emitted value: ${n.name}');
      final _ = switch (n) {
        ConnectionState.scanning => onScan(ConnectionState.scanning),
        ConnectionState.disconnected => onDisconnect(ConnectionState.disconnected),
        ConnectionState.connecting => onConnecting(ConnectionState.connecting),
        ConnectionState.connected => onConnected(ConnectionState.connected),
      };
    });
  }

  onScan(ConnectionState connectionState) {
    print('on scan');
    ref.read(connectionStatusStringProvider.notifier).setStrFromState(connectionState);
  }

  onDisconnect(ConnectionState connectionState) {
    print('on disconnect');
    // when disconnect is emitted, we will reinitalise the stream
    ref.read(connectionProvider.notifier).triggerConnect();
    ref.read(connectionStatusStringProvider.notifier).setStrFromState(connectionState);
  }

  onConnecting(ConnectionState connectionState) {
    print('on connecting');
    ref.read(connectionStatusStringProvider.notifier).setStrFromState(connectionState);
  }

  onConnected(ConnectionState connectionState) {
    print('on connected');
    ref.read(connectionStatusStringProvider.notifier).setStrFromState(connectionState);
  }
}

@Riverpod(keepAlive: true)
ListenAndTrigger listenAndTrigger(Ref ref) {
  return ListenAndTrigger(ref);
}

// emulates the scanning stream. The stream will emit every connection state in 11 seconds
@Riverpod(keepAlive: true)
Stream<String> mockScanner(Ref ref) {
  return Stream.periodic(const Duration(seconds: 1), (time) {
    if (time < 3) {
      return ConnectionState.scanning.name;
    }

    if (time >= 3 && time <= 7) {
      return ConnectionState.connecting.name;
    }

    if (time >= 7 && time <= 10) {
      return ConnectionState.connected.name;
    }

    return ConnectionState.disconnected.name;
  });
}

// listens to the scanning stream and modifies its internal state
@Riverpod(keepAlive: true)
class Connection extends _$Connection {
  ProviderSubscription<AsyncValue<String>>? scanSubscription;
  @override
  ConnectionState build() {
    triggerConnect();
    return ConnectionState.scanning;
  }

  void triggerConnect() {
    print('Restarting Stream!');
    ref.invalidate(mockScannerProvider);
    scanSubscription = ref.listen(mockScannerProvider, (_, next) {
      state = switch (next.value) {
        'scanning' => ConnectionState.scanning,
        'connecting' => ConnectionState.connecting,
        'connected' => ConnectionState.connected,
        'disconnected' => ConnectionState.disconnected,
        _ => throw UnimplementedError(),
      };
    });
  }
}

// Provider used to map connection state to presentation layer
@riverpod
class ConnectionStatusString extends _$ConnectionStatusString {
  @override
  String build() {
    return ConnectionState.scanning.name;
  }

  setStrFromState(ConnectionState connectionState) {
    state = connectionState.name;
  }
}
