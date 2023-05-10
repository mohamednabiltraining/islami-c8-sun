import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c8_sun/providers/settings_provider.dart';
import 'package:islami_c8_sun/ui/home/settings/language_bottom_sheet.dart';
import 'package:islami_c8_sun/ui/home/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).cardColor,
                  border: Border.all(
                      color: Theme.of(context).accentColor, width: 1)),
              child: Text(
                provider.languageCode == 'en' ? "English" : "العربيه",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).cardColor,
                  border: Border.all(
                      color: Theme.of(context).accentColor, width: 1)),
              child: Text(
                provider.isDarkEnabled()
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }
}
