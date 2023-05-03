import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8_sun/ui/chapter_details/verse_item.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const routeName = 'chapter-details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsScreenArgs;
    if (verses.isEmpty) readFile(args.index);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Card(
                elevation: 24,
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 48),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: ListView.separated(
                  itemBuilder: (buildContext, index) {
                    return VerseItem(verses[index], index + 1);
                  },
                  itemCount: verses.length,
                  separatorBuilder: (_, __) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 1,
                      margin: EdgeInsets.symmetric(horizontal: 48),
                    );
                  },
                ),
              ),
      ),
    );
  }

  void readFile(int index) async {
    String fileName = 'assets/files/${index + 1}.txt';
    String fileContent = await rootBundle.loadString(fileName);
    verses = fileContent.split('\n');
    print(fileContent);
    setState(() {});
  }
}

class ChapterDetailsScreenArgs {
  // data class
  int index;
  String name;

  ChapterDetailsScreenArgs(this.index, this.name);
}
