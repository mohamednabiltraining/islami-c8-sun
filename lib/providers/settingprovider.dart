import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';

     void enableDarkTheme(){
       themeMode = ThemeMode.dark;
       notifyListeners();
     }
     void enableLightTheme(){
       themeMode = ThemeMode.light;
       notifyListeners();
     }

     String getBackGroundImage (){
       return themeMode==ThemeMode.light?
       'assets/images/main_background.png':
       'assets/images/darkbg.jpg';
     }
     void enableEnglishLanguage(){
       languageCode = 'en';
       notifyListeners();
     }
    void enableArabicLanguage(){
    languageCode = 'ar';
    notifyListeners();
  }



}