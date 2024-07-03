import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_listener/listen_and_trigger_poc.dart';

@riverpod
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(connectionProvider);
    ref.read(listenAndTriggerProvider);

    final status = ref.watch(connectionStatusStringProvider);

    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text(status)),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     ref.read(connectionProvider.notifier).triggerConnect();
        //   },
        //   child: SizedBox(
        //     height: 50,
        //     width: 100,
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('trigger connect'),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
