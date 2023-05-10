import 'package:flutter/material.dart';
import 'package:islami_c8_sun/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: provider.languageCode == 'en'
                ? getSelectedWidget('English', context)
                : getUnselectedWidget('English', context),
          ),
          SizedBox(
            height: 24,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: provider.languageCode == 'ar'
                  ? getSelectedWidget('العربيه', context)
                  : getUnselectedWidget('العربيه', context)),
        ],
      ),
    );
  }

  Widget getSelectedWidget(String title, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Theme.of(context).accentColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget getUnselectedWidget(String title, BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
