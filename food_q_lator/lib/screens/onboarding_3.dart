import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            Text("Im Optimalfall bleibt keiner liegen", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0,),),
            SizedBox(height: 20.0,),
            Text("Leben auf dem Drahtseil, das 187", textAlign: TextAlign.center),
            SizedBox(height: 40.0,),
            TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    
                  ),
                  onPressed: () {},
                  child: const Text('187'),
                ),
          
          ],
        ),
      ),
    );
  }
}