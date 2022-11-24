import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_q_lator/services/constants.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: 100,
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('SKIP >',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 188, 212, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            )),
                        onPressed: null,
                      )
                    ],
                  ),
                )),
            Container(
              color: Colors.red,
              height: 550,
            ), //Container - Picture
            Container(
                height: 150,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 50,
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Text(
                            'GPS Tracking',
                            style: TextStyle(
                              color: Color.fromARGB(255, 45, 45, 45),
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          )),
                    ),
                    Container(
                      height: 100,
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Loved the class! Such beautiful land and collective impact infrastructure social entrepreneur.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 110, 110, 110),
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                            ),
                          )),
                    )
                  ],
                )), //Container - Text
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.only(
                            top: 15, right: 120, bottom: 15, left: 120),
                        backgroundColor: Color.fromRGBO(0, 188, 212, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                    child: const Text('CONTINUE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        )),
                    onPressed: null,
                  )
                ],
              ),
            ) //Container - Button
          ],
        ),
      ),
    );
  }
}
