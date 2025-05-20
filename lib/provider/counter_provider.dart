import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _nilai = 3;
  int get hasil => _nilai;

  tambahkan() {
    _nilai = _nilai + 1;
    notifyListeners();
  }

  kurangkan() {
    _nilai = _nilai - 1;
    notifyListeners();
  }
}
