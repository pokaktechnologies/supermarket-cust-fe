import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  bool isFloatingOpen = false;

  void updateFloatingState() {
    isFloatingOpen = !isFloatingOpen;
    notifyListeners();
  }

  void resetFloatingValue() {
    isFloatingOpen = false;
    notifyListeners();
  }
}
