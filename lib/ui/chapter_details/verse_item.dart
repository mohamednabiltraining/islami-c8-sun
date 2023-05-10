import 'package:flutter/material.dart';

class VerseItem extends StatelessWidget {
  String content;
  int index;

  VerseItem(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content {$index}',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
