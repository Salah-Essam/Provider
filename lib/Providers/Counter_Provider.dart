import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  List<String> TypesOfCounter = ['increment', 'decrement'];

  int get typesOfCounterLength => TypesOfCounter.length;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }

  void selectType(String type) {
    if (type == 'increment') {
      increment();
    } else if (type == 'decrement') {
      decrement();
    }
  }
}
