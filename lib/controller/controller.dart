import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int num = 0;
  increament() {
    num++;
    notifyListeners();
  }

  decrament() {
    num--;
    notifyListeners();
  }

  reset() {
    num = 0;
    notifyListeners();
  }
}
