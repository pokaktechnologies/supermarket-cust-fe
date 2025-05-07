import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  bool isFloatingOpen = true;

  void updateFloatingState() {
    isFloatingOpen = !isFloatingOpen;
    notifyListeners();
  }
}
