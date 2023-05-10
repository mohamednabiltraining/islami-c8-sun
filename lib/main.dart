import 'package:flutter/material.dart';
import 'package:islami_c8_sun/ui/chapter_details/chapter_details.dart';
import 'package:islami_c8_sun/ui/hadeth_details/hadethdetails.dart';
import 'package:islami_c8_sun/ui/home/home_screen.dart';
import 'package:islami_c8_sun/ui/mythemdata.dart';
import 'package:islami_c8_sun/ui/splash/splash_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemData.lightTheme,
      darkTheme: MyThemData.darkTheme,
      themeMode: MyThemData.themeMode ,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildContext) => ChapterDetailsScreen(),
        HadethDetails.routeName: (BuildContext)=> HadethDetails(),

      },
    );
  }
}
