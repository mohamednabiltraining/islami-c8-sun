import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c8_sun/providers/settings_provider.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami_c8_sun/ui/home/quran/quran_tab.dart';
import 'package:islami_c8_sun/ui/home/radio/radio_tab.dart';
import 'package:islami_c8_sun/ui/home/sebha/sebha_tab.dart';
import 'package:islami_c8_sun/ui/home/settings/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackGroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title),
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
                  label: AppLocalizations.of(context)!.hadeth),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                  label: AppLocalizations.of(context)!.tasbeh),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: AppLocalizations.of(context)!.radio,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings,
              ),
            ],
          ),
          body: tabs[selectedIndex]),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
}
