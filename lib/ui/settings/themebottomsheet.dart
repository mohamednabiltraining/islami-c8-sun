import 'package:flutter/material.dart';
import 'package:islami_c8_sun/providers/settingprovider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(onTap: () {
            provider.enableLightTheme();
          },
            child: provider.themeMode == ThemeMode.light?
            getSelectedWidget(AppLocalizations.of(context)!.light, context):
            getUnSelectedWidget(AppLocalizations.of(context)!.light, context),
          ),
          SizedBox(height: 20,),
          InkWell(onTap: () {
            provider.enableDarkTheme();
          },
            child: provider.themeMode == ThemeMode.dark?
                getSelectedWidget(AppLocalizations.of(context)!.dark, context):
                getUnSelectedWidget(AppLocalizations.of(context)!.dark, context)
          ),
        ],
      ),
    );
  }
  Widget getSelectedWidget(String title,BuildContext context){
    return Row(

      children: [
        Text(title),
        SizedBox(width: 20,),
        Icon(Icons.check,color: Colors.white)
      ],
    );
  }

  Widget getUnSelectedWidget(String title,BuildContext context){
    return Row(

      children: [
        Text(title),
        SizedBox(width: 20,),
      ],
    );
  }

}