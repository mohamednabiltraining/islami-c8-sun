import 'package:flutter/material.dart';
import 'package:islami_c8_sun/providers/settings_provider.dart';
import 'package:islami_c8_sun/ui/home/home_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    Future.delayed(
        Duration(
          seconds: 2,
        ), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        provider.isDarkEnabled()
            ? 'assets/images/dark_splash.png'
            : 'assets/images/splash_background.png',
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
