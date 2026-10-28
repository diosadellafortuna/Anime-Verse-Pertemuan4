import 'package:flutter/material.dart';
import 'package:pertemuan4_pbo_lab/counter_screen.dart';
import 'package:pertemuan4_pbo_lab/app_state_provider.dart';
import 'package:pertemuan4_pbo_lab/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppStateProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: const CounterScreen(),
      ),
    );
  }
}
