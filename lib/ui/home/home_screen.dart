import 'package:flutter/material.dart';
import 'package:islami_c8_sun/providers/settingprovider.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami_c8_sun/ui/home/quran/quran_tab.dart';
import 'package:islami_c8_sun/ui/home/radio/radio_tab.dart';
import 'package:islami_c8_sun/ui/home/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c8_sun/ui/settings/settingstab.dart';
import 'package:provider/provider.dart';

import '../mythemdata.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<SettingProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                provider.getBackGroundImage()
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                  label: AppLocalizations.of(context)!.ahadeth),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  backgroundColor: Theme.of(context).primaryColor ,
              label: AppLocalizations.of(context)!.settings),
            ],
          ),
          body: tabs[selectedIndex]),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab(),SettingsTab()];
}
