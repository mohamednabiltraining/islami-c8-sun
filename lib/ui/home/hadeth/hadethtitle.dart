import 'package:flutter/material.dart';
import 'package:islami_c8_sun/ui/hadeth_details/hadethdetails.dart';
import 'hadeth.dart';


class HadethTitleWidget extends StatelessWidget {

  Hadeth hadeth;
  HadethTitleWidget(this.hadeth,);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.pushNamed(context, HadethDetails.routeName,arguments: hadeth);
    },
      child: Container(
        alignment: Alignment.center,
        child: Text(hadeth.title,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
