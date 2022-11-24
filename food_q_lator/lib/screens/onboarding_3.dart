import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_q_lator/screens/home_screen.dart';
import 'package:food_q_lator/services/constants.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
            Text("Jetzt starten!", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, fontFamily: 'Montsserrat'),),
            SizedBox(height: 20.0,),
            Text("Anmelden oder direkt loslegen", textAlign: TextAlign.center),
            SizedBox(height: 40.0,),
            TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: kAccentColor,
                    padding: const EdgeInsets.all(15.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Mit Google anmelden'),
                ),
            SizedBox(height: 20.0,),
            TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    padding: const EdgeInsets.all(15.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Anmelden'),
                ),
            SizedBox(height: 20.0,),
            TextButton(
              style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: kLightPrimaryColor,
                    padding: const EdgeInsets.all(15.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
              onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const HomeScreen()),
                ),
                 child: const Text('Überspringen')),
          ],
        ),
      ),
    );
  }
}