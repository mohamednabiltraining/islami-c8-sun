import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadeth_item.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/hadeth_header.png'),
        Expanded(
          child: hadethList.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (_, index) {
                    return HadethWidget(hadethList[index]);
                  },
                  separatorBuilder: (_, __) {
                    return Container(
                      color: Theme.of(context).accentColor,
                      height: 1,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 48),
                    );
                  },
                  itemCount: hadethList.length),
        )
      ],
    );
  }

  void loadFile() async {
    String fileName = 'assets/files/ahadeth.txt';
    String fileContent = await rootBundle.loadString(fileName);
    List<String> allHadeth = fileContent.trim().split('#');
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadethContent = allHadeth[i];
      List<String> singleHadethLines = singleHadethContent.trim().split('\n');
      String title = singleHadethLines[0];
      singleHadethLines.removeAt(0);
      String content = singleHadethLines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
