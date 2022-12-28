import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_q_lator/components/default_button.dart';
import 'package:food_q_lator/screens/home_screen.dart';
import 'package:food_q_lator/screens/restaurantScreen.dart';
import 'package:food_q_lator/services/constants.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //TODO: richtigen Link einfügen
                new InkWell(
                    child: new Text('Skip ->'),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const HomeScreen()),
                    )
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  //Picture
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'images/ikigai-udon-recipe-1.png'),
                                fit: BoxFit.fill),
                          )),
                        ),
                      ],
                    ),
                  ),
                  //Text unter dem Bild
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Food-Q-Lator',
                                style: kTextStyle,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text('Sie sind in der Stadt und wissen nicht, wo sie ihr Lieblingsgericht finden?'),
                              Text('Oder wollen beim Mittagessen kein Vermögen ausgeben?'),
                              Text('Dann haben wir eine Lösung für sie parat!')
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              //TODO: Weiterleitung auf onboarding2
                              DefaultButton(
                                color: Color(33),
                                text: 'Weiter',
                                onPressed: () {
                                  setState(
                                    () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
