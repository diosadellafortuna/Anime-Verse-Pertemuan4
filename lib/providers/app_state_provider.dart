import 'package:flutter/material.dart';

class AppStateProvider extends ChangeNotifier {
  //STATE
  int _counter = 0;

  //Getter
  int get counter => _counter;

  //Helper Function
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
