import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color lightAccentColor = Color(0xFFB7935F);
  static const Color darkAccentColor = Color(0xFFFACC1D);
  static final ThemeData lightTheme = ThemeData(
      cardColor: Colors.white,
      accentColor: lightPrimaryColor,
      textTheme: const TextTheme(
          headline5: TextStyle(fontSize: 24, color: Colors.black),
          bodyText1: TextStyle(fontSize: 20, color: Colors.black)),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: lightPrimaryColor),
      primaryColor: lightPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 32, fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightPrimaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
  static final ThemeData darkTheme = ThemeData(
      cardColor: darkPrimaryColor,
      textTheme: const TextTheme(
          headline5: TextStyle(fontSize: 24, color: Colors.white),
          bodyText1: TextStyle(fontSize: 20, color: Colors.white)),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: darkAccentColor),
      primaryColor: darkPrimaryColor,
      accentColor: darkAccentColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkPrimaryColor,
        selectedItemColor: darkAccentColor,
        unselectedItemColor: Colors.white,
      ));
  static bool isDarkEnabled = true;
}
