import 'package:flutter/material.dart';

class LanguageProvide extends ChangeNotifier {
  String appLanguage = "en"; // => local

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    } else {
      appLanguage = newLanguage;
    }
    notifyListeners();
  }
}
