import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
int counter = 0;
int index =0;
double angle=0;

 List < String> tsbeth = ['سبحان الله','الحمد لله','الله اكبر '];

  @override
  Widget build(BuildContext context) {
    coutnerMothed() {
      angle +=10;

      if (counter == 33) {
        counter = 0;
        if ( index< tsbeth.length-1){
          index++;
        }
        else {
          index=0;
        }
      }
      else {
        counter++;
      }
      setState(() {});
    }


    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
         Padding(
           padding: const EdgeInsets.only(left: 30),
           child: Align(alignment: Alignment.center,
            child: Image.asset('assets/images/head_sebha_logo.png',height: 100,)),
         ),
          GestureDetector(
            onTap:coutnerMothed,
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Align(alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: angle,
                      child: Image.asset('assets/images/body_sebha_logo.png'))),
            ),
          )
          ],
        ),
        SizedBox(height: 50,),
        Text('عدد التسبيحات',style: TextStyle(fontSize: 25,color: AppTheme.black,fontWeight: FontWeight.w600)),
        Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),

              color:Color.fromRGBO(183, 147, 95, 1)),

            child: Text(counter.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)),
        SizedBox(height: 4),
        Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),

                color:AppTheme.primaryLight) ,

            child: Text( tsbeth[index],style: TextStyle(fontSize: 25,
                color: AppTheme.white,fontWeight: FontWeight.w400),))
      ]
    );

  }
}


