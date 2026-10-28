import 'package:flutter/material.dart';
import 'package:pertemuan4_pbo_lab/providers/app_state_provider.dart';
import 'package:pertemuan4_pbo_lab/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<AppStateProvider>(
          builder: (context, CounterProvider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${CounterProvider.counter}'),
                ElevatedButton(
                  onPressed: () {
                    CounterProvider.incrementCounter();
                    print('Jumlah Counter : ${CounterProvider.counter}');
                  },
                  child: Text('Click Me'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
