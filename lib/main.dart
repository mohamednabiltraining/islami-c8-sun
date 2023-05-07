import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c8_sun/ui/MyTheme.dart';
import 'package:islami_c8_sun/ui/chapter_details/chapter_details.dart';
import 'package:islami_c8_sun/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_c8_sun/ui/home/home_screen.dart';
import 'package:islami_c8_sun/ui/splash/splash_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: SplashScreen.routeName,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(
          'en',
        ), // English
        Locale(
          'ar',
        ), // Spanish
      ],
      locale: Locale('ar'),
      routes: {
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildContext) =>
            ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
    );
  }
}
