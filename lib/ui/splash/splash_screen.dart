import 'package:flutter/material.dart';
import 'package:islami_c8_sun/providers/settingprovider.dart';
import 'package:islami_c8_sun/ui/home/home_screen.dart';
import 'package:islami_c8_sun/ui/mythemdata.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        provider.getBackGroundImage(),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
