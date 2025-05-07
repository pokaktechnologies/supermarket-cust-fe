import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';

class CartProvider extends ChangeNotifier {
  int countOne = 0;
  int countTwo = 0;
  int countThree = 0;
  String selectedOption = 'option1';

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

  final List<Map<String, dynamic>> options = [
    {
      'icon': AppAssets.cartHomeIcon,
      'text': 'Home',
      'address': '123 Main Street, Apt 4B,City, State, 688005 +91 9632145875',
      'value': 'option1',
    },
    {
      'icon': AppAssets.cartWorkIcon,
      'text': 'Work',
      'address': '123 Main Street, Apt 4B,City, State, 688005 +91 9632145875',
      'value': 'option2',
    },
  ];

  void updateRadioStatus(String value) {
    selectedOption = value;
    notifyListeners();
  }
}
