import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_q_lator/components/default_button.dart';
import 'package:food_q_lator/services/constants.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisSize: MainAxisSize.max,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //TODO: Text zu Link
              Text('Skip')
            ],
          ),
          Expanded (child:Column(

            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.max,
            children: [
              //Picture
              Expanded(child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container(
                      //height: 120.0,
                      //width: 120.0,
                      decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(
                          '../../images/ikigai-udon-recipe-1.png'), fit: BoxFit.fill
                    ),
                  )
                  ))],
              ))
              ,
              //Text unter dem Bild
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Column(
                    children: [
                      //TODO: Überschrift schreiben
                      Text('Hier könnte Ihre Überschrift stehen!', style: kTextStyle,),
                      SizedBox(height: 30,),
                      //TODO: Text unter Überschrift schreiben
                      Text('Text unter Überschrift')
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      DefaultButton(color: Color(33), text: counter.toString(), onPressed: () {
                        setState(() {
                          counter++;
                        });
                      })
                    ],
                  ) )
                ],
              ))

            ],
          )


          )
        ],
      ),

    );
  }
}
