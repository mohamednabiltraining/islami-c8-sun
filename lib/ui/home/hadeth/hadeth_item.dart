import 'package:flutter/material.dart';
import 'package:islami_c8_sun/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadeth_tab.dart';

class HadethWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
