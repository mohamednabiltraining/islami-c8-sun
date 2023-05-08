import 'package:flutter/material.dart';
import 'package:islami_c8_sun/ui/home/hadeth/hadeth.dart';

class HadethDetails extends StatelessWidget{
  static const String routeName ='hadethdetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main_background.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(child: Card(
              child: SingleChildScrollView(
                child: Text(args.content,style: TextStyle(
                  fontSize: 20
                ),textAlign: TextAlign.center),
              ),
              elevation: 24,
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 48),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ))
          ],
        ),
      ),
    );

  }

}