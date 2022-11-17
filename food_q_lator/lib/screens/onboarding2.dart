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
              color: Color.fromARGB(255, 255, 255, 255),
              height: 100,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Skip >',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 191, 255),
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          )
                        ),
                      ),
                    ),
                  )
                ],
              ), 
            )
          ],
        ),
      ),
    );
  }
}