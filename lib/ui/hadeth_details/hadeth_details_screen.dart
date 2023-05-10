import 'package:flutter/material.dart';
import 'package:islami_c8_sun/providers/settings_provider.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadeth_tab.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackGroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                elevation: 24,
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: SingleChildScrollView(
                  child: Text(
                    args.content,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
