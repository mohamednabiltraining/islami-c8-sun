import 'dart:math';

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double finalAngle = 0.0;
  List<String> tasbeeh= ['سبحان الله','الحمد لله ', 'لا اله الا الله'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Image.asset('assets/images/hos.png'),
          GestureDetector(onTap: () {
            finalAngle += 0.2;
            counter++;
            setState(() {});
          },
              child: Transform.rotate(child:Image.asset('assets/images/boslight.png'),
                  angle: finalAngle),
              ),
          SizedBox(height: 20,),
          Text('عدد التسبيحات',style:TextStyle(fontSize: 30) ),
          SizedBox(height: 20,),
          Container(
            child: Text('$counter',style: TextStyle(fontSize: 50),
            textAlign: TextAlign.center ),
            width: 68, height: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
              color:Theme.of(context).primaryColor, ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Text(tasbeh(), textAlign: TextAlign.center,style: TextStyle(
              fontSize: 25
            )),
            width: 138, height: 52,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
              color:Theme.of(context).accentColor, ),
          ),
        ],
      ),
    );
  }
  String tasbeh (){
  final random = Random();
  var i = random.nextInt(tasbeeh.length);
  return tasbeeh[i];
}

}
