import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadeth.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadethtitle.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if(allHadeth.isEmpty)
    readHadeth();
    return Column(
      children: [
        Expanded(
          flex: 1,
            child: Image(image: AssetImage('assets/images/5925.png'))),
        Container(
          height: 2, width: double.infinity,
          color: Theme
              .of(context)
              .primaryColor,
          margin: EdgeInsets.only(bottom: 4),
        ),
        Text(
          'Ahadeth',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Container(
          color: Theme
              .of(context)
              .primaryColor,
          height: 2,
          width: double.infinity,
          margin: EdgeInsets.only(top: 4),
        ),
        Expanded(
          flex:3,
          child: Container(
            child: ListView.separated(itemBuilder: (context, index) {
              return HadethTitleWidget(allHadeth[index]);
            }, itemCount: allHadeth.length, separatorBuilder: (buildContext, index) {
              return Container(
                color: Theme.of(context).primaryColor,
                height: 1,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 48),
              );
            },),
          ),
        ),
      ],
    );
  }

  void readHadeth() async {
    List<Hadeth> hadethList = [];

    String hadethContent = await rootBundle.loadString('assets/files/h50.txt');
    List<String> hadethSplited = hadethContent.split('#');
    for (int i = 0; i < hadethSplited.length; i++) {
      String singelHadeth = hadethSplited[i];
      List<String> hadethLines = singelHadeth.trim().split('\n');
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join(' ');
      Hadeth hadeth = Hadeth(hadethTitle, hadethContent);
      hadethList.add(hadeth);
    }
    allHadeth = hadethList;
    setState(() {});
  }

}
