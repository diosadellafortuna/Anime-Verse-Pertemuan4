import 'package:flutter/material.dart';
import 'package:pemmob_lab/screens/counter_screen.dart';

class DecrementScreen extends StatefulWidget {
  const DecrementScreen({super.key});

  @override
  State<DecrementScreen> createState() => _DecrementScreenState();
}

class _DecrementScreenState extends State<DecrementScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decrement Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$_counter'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
                print('Jumlah Klik $_counter');
              },
              child: Text('Click Me'),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const CounterScreen()));
                },
                child: Text('Go to Counter')
            )
          ],
        ),
      ),
    );
  }
}