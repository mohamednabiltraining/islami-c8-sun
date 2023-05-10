import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c8_sun/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

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
                provider.enableLightMode();
              },
              child: provider.isDarkEnabled()
                  ? getUnselectedWidget(
                      AppLocalizations.of(context)!.light, context)
                  : getSelectedWidget(
                      AppLocalizations.of(context)!.light, context)),
          SizedBox(
            height: 24,
          ),
          InkWell(
              onTap: () {
                provider.enableDarkMode();
              },
              child: provider.isDarkEnabled()
                  ? getSelectedWidget(
                      AppLocalizations.of(context)!.dark, context)
                  : getUnselectedWidget(
                      AppLocalizations.of(context)!.dark, context)),
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
