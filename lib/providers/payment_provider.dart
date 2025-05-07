import 'package:flutter/material.dart';

class PaymentProvider extends ChangeNotifier {
  bool isUpiExpanded = false;
  int selectedOption = 1;

  void changeUpiExpand() {
    isUpiExpanded = !isUpiExpanded;
    notifyListeners();
  }

  void changeSelectedOption(value) {
    selectedOption = value;
    notifyListeners();
  }
}
