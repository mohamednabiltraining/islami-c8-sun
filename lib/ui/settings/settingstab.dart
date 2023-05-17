import 'package:flutter/material.dart';
import 'package:islami_c8_sun/providers/settingprovider.dart';
import 'package:islami_c8_sun/ui/settings/languagebottomsheet.dart';
import 'package:islami_c8_sun/ui/settings/themebottomsheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget{
  static const String routeName ='settingtab';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(

        children: [
          SizedBox(height: 100,),
          Text(AppLocalizations.of(context)!.theme,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 25),),
          SizedBox(height: 8),
          InkWell(
            onTap: () {
              showTheme(context);
            },
            child: Container(
                child: Text(provider.themeMode == ThemeMode.light?
                    AppLocalizations.of(context)!.light:
                    AppLocalizations.of(context)!.dark
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Theme.of(context).accentColor)),
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25)),
          ),
          SizedBox(height: 50,),
          Text(AppLocalizations.of(context)!.language,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 25),),
          SizedBox(height: 8),
          InkWell(
            onTap: () {
              showLanguage(context);
            },
            child: Container(child: Text(provider.languageCode == 'en'?
                'English': 'عـربـى'
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Theme.of(context).accentColor)),
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25)),
          ),
        ],
      ),
    );
  }
   void showTheme(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (BuildContext)=> ThemeBottomSheet());
   }
  void showLanguage(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (BuildContext)=> LanguageBottomSheet());
  }
}