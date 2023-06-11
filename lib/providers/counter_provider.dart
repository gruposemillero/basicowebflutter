import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 2;
  CounterProvider(String base) {
    if (int.tryParse(base) != null) {
      _counter = int.parse(base);
    }
  }
  get counter => _counter;
  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    if (_counter >= 1) _counter--;

    notifyListeners();
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }
}
