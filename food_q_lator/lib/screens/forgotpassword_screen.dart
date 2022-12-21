import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_q_lator/components/default_button.dart';
import 'package:food_q_lator/services/constants.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var shade1002 = Colors.grey.shade100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shade1002,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'PASSWORT VERGESSEN',
                      style: kLogInSignTextStyle,
                    ),
                    Text(
                      'Gebe deine Email-Adresse ein um dein Passwort zurückzusetzen',
                      style: kLogInSecondarySignTextStyle,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 30.0),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Deine E-Mail',
                            style: kLoginInputLabelTextStyle,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText:
                                  'Gebe deine E-Mail Adresse ein, z.B. max.mustermann@outlook.com',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          DefaultButton(
                            color: kAccentColor,
                            text: 'Jetzt Senden',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                              child: Text('Probleme mit der Anmeldung?')),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Geh zum FAQ',
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
