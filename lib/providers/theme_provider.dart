import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvide extends ChangeNotifier {
  ThemeMode appTheme = ThemeMode.light;
  void changeTheme(ThemeMode newTheme) {
    if (newTheme == appTheme) {
      return;
    } else {
      appTheme = newTheme;
    }
    notifyListeners();
  }
}
