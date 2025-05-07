import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  int countOne = 0;
  int countTwo = 0;
  int countThree = 0;

  void increseCountOne() {
    countOne = countOne + 1;
    notifyListeners();
  }

  void increseCountTwo() {
    countTwo = countTwo + 1;
    notifyListeners();
  }

  void increseCountThree() {
    countThree = countThree + 1;
    notifyListeners();
  }

  void decreaseCountOne() {
    if (countOne > 0) countOne = countOne - 1;
    notifyListeners();
  }

  void decreaseCountTwo() {
    if (countTwo > 0) countTwo = countTwo - 1;
    notifyListeners();
  }

  void decreaseCountThree() {
    if (countThree > 0) countThree = countThree - 1;
    notifyListeners();
  }

  void resetValues() {
    countOne = 0;
    countTwo = 0;
    countThree = 0;
    notifyListeners();
  }
}
