import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c8_sun/providers/settingprovider.dart';
import 'package:islami_c8_sun/ui/chapter_details/chapter_details.dart';
import 'package:islami_c8_sun/ui/hadeth_details/hadethdetails.dart';
import 'package:islami_c8_sun/ui/home/home_screen.dart';
import 'package:islami_c8_sun/ui/mythemdata.dart';
import 'package:islami_c8_sun/ui/settings/settingstab.dart';
import 'package:islami_c8_sun/ui/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext)=> SettingProvider(),
  child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemData.lightTheme,
      darkTheme: MyThemData.darkTheme,
      themeMode: provider.themeMode ,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildContext) => ChapterDetailsScreen(),
        HadethDetails.routeName: (BuildContext)=> HadethDetails(),
        SettingsTab.routeName : (BuildContextl)=> SettingsTab(),

      },
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.languageCode),
    );
  }
}
