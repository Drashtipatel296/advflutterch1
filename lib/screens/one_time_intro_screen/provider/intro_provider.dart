import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier {
  bool isClicked = false;

  void click(){
    isClicked = true;
    notifyListeners();
  }

  Future<void> onPressed() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isChecked', true);
  }

  Future<void> getAnswer() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.getBool('isChecked') ?? false;
    notifyListeners();
  }
  IntroProvider(){
    getAnswer();
  }
}
