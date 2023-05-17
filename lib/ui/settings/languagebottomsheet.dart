import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settingprovider.dart';

class LanguageBottomSheet extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(onTap: () {
            provider.enableEnglishLanguage();
          },
            child: provider.languageCode == 'en'?
            getSelectedWidget('English', context):
            getUnSelectedWidget('English', context),
          ),
          SizedBox(height: 20,),
          InkWell(onTap: () {
            provider.enableArabicLanguage();
          },
            child: provider.languageCode == 'ar'?
            getSelectedWidget('عـربـى', context):
            getUnSelectedWidget('عـربـى', context),
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