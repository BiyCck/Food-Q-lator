import 'package:flutter/material.dart';
import 'package:food_q_lator/components/default_button.dart';
import 'package:food_q_lator/services/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var shade1002 = Colors.grey.shade100;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Einloggen',
                      style: kLogInSignTextStyle,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      'Nur noch einen Schritt vor dem Food-Q-Lator entfernt',
                      style: kLogInSecondarySignTextStyle,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 30.0),
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
                          const Text(
                            'Dein Password',
                            style: kLoginInputLabelTextStyle,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Gebe dein Password ein',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: SizedBox(),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Passwort vergessen?',
                                  style: kForgotPasswordTextStyle,
                                ),
                              ),
                            ],
                          ),
                          DefaultButton(
                            color: kAccentColor,
                            text: 'Einloggen',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DefaultButton(
                        color: Colors.black,
                        text: 'Einloggen über Apple-ID',
                        onPressed: (() {}),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Hast du noch kein Konto?'),
                          TextButton(
                            onPressed: (() {}),
                            child: Text('Registriere dich!'),
                          ),
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
      backgroundColor: shade1002,
    );
  }
}
