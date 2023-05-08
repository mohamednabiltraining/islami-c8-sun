import 'dart:math';

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double finalAngle = 0.0;
  List<String>tasbeeh= ['سبحان الله','الحمد لله ', 'لا اله الا الله'];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [

          Container(
              margin: EdgeInsets.only(left: 50),
              child: Image.asset('assets/images/head of seb7a.png')),
          GestureDetector(
            onTap: (){
              finalAngle+=.1;
              counter++;
              setState(() {
              });
            },
            child: Transform.rotate(
                angle: finalAngle,
                origin: Offset(0, 0),
                child: Image.asset('assets/images/body_of_seb7a.png')),
          ),
          SizedBox(height: 30,),
          Text('عدد التسبيحات',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffB7935F),
            ),
            padding: EdgeInsets.all(20),
            child: Text('$counter',
              style: TextStyle(
                fontSize: 25,
              ),),
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xffB7935F),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Text(tasbeehCounter(),
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }

  String tasbeehCounter(){
    final random = new Random();
    var i = random.nextInt(tasbeeh.length);
    return tasbeeh[i];

  }
}
