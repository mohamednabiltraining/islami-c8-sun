import 'package:flutter/material.dart';

class MyThemData {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color lightTextColor = Colors.black;
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color darkTextColor = Colors.white;
  static const Color darkAccentColor = Color(0xFFFACC1D);


  static var lightTheme = ThemeData(
      progressIndicatorTheme:
      ProgressIndicatorThemeData(color: lightPrimaryColor),
      primaryColor: lightPrimaryColor,
      accentColor:  lightPrimaryColor,
      cardColor: lightPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: lightTextColor,
              fontSize: 32,
              fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
    textTheme: TextTheme(
      headline3: TextStyle(
        color: lightTextColor,
        fontSize: 32
      ),
      headline6: TextStyle(
        color: lightTextColor,
        fontSize: 24,
      ),
      bodyText1: TextStyle(
        color: lightTextColor,
        fontSize: 24,
      ),
      bodyText2: TextStyle(
        color: lightTextColor,
        fontSize: 20,
      ),
    ),
  );

  static var darkTheme = ThemeData(
      progressIndicatorTheme:
  ProgressIndicatorThemeData(color: darkPrimaryColor),
      primaryColor: darkPrimaryColor,
      accentColor: darkAccentColor,
      cardColor: darkPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: darkTextColor,
              fontSize: 32,
              fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimaryColor,
        selectedItemColor: Color(0xFFFACC1D),
        unselectedItemColor: Colors.white,
      ),
    textTheme: TextTheme(
      headline3: TextStyle(
          color: darkTextColor,
          fontSize: 30
      ),
      headline6: TextStyle(
        color: darkTextColor,
        fontSize: 24,
      ),
      bodyText1: TextStyle(
        color: darkTextColor,
        fontSize: 24,
      ),
      bodyText2: TextStyle(
        color: darkTextColor,
        fontSize: 20,
      ),
    ),
  );

  // static ThemeMode themeMode = ThemeMode.light ;
}