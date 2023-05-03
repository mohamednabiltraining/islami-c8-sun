import 'package:flutter/material.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadeth_tab.dart';

class HadethWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return Text(
      hadeth.title,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}
