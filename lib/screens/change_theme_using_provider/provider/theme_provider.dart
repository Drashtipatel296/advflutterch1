import 'package:flutter/material.dart';

class ThemeChangeProvider extends ChangeNotifier{
  bool isDark = false;

  void theme(bool value)
  {
    isDark = value;
    notifyListeners();
  }
}