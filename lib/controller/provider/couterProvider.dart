import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  addToCount() {
    count = count + 1;
    notifyListeners();
  }

  subtractToCount() {
    count = count - 1;
    notifyListeners();
  }
}
