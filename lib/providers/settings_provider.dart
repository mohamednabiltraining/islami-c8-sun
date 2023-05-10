import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String languageCode = 'en';
  ThemeMode theme = ThemeMode.light;

  void changeLanguage(String newLang) {
    languageCode = newLang;
    notifyListeners();
  }

  void enableDarkMode() {
    theme = ThemeMode.dark;
    notifyListeners();
  }

  void enableLightMode() {
    theme = ThemeMode.light;
    notifyListeners();
  }

  bool isDarkEnabled() {
    return theme == ThemeMode.dark;
  }

  String getBackGroundImage() {
    return isDarkEnabled()
        ? 'assets/images/dark_background.png'
        : 'assets/images/main_background.png';
  }
}
