import 'package:flutter/material.dart';
import 'package:islami_c8_sun/ui/chapter_details/chapter_details.dart';

class Ahmed {
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

class ChapterNameWidget extends StatelessWidget {
  String name;
  int index;

  ChapterNameWidget(this.name, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsScreenArgs(index, name));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '$name',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
