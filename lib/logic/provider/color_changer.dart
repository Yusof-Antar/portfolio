import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ColorChanger extends ChangeNotifier {
  int primary = const Color(0xff000000).value;
  int secondary = const Color(0xffC7202A).value;

  ColorChanger({
    required this.primary,
    required this.secondary,
  });

  void changePrimaryColor(int newPrimary) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    primary = newPrimary;
    prefs.setInt('primary', primary);
    notifyListeners();
  }

  void changeSecondaryColor(int newSecondary) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    secondary = newSecondary;
    prefs.setInt('secondary', secondary);
    notifyListeners();
  }

  int get getPrimary => primary;
  int get getSecondary => secondary;
}
