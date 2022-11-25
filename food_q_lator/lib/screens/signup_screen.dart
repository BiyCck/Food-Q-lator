import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_q_lator/components/default_button.dart';
import 'package:food_q_lator/screens/login_screen.dart';
import 'package:food_q_lator/services/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var shade1002 = Colors.grey.shade100;
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
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Registrieren',
                        style: kLogInSignTextStyle,
                      ),
                      Text(
                        'Registriere dich heute um den Food-Q-Lator zu benutzen',
                        style: kLogInSecondarySignTextStyle,
                      ),
                    ],
                  ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            'Dein Passwort',
                            style: kLoginInputLabelTextStyle,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Gebe dein Password ein',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const Text(
                            'Passwort bestätigen',
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
                              TermsAndConditionSwitch(),
                              Text(
                                'Ich stimme den Geschäftsbedingungen zu',
                                style: kTermsAndConditionsTextStyle,
                              ),
                            ],
                          ),
                          DefaultButton(
                            color: kAccentColor,
                            text: 'Jetzt registrieren',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Du hast schon ein Konto?'),
                          TextButton(
                            onPressed: (() {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: ((context) => LoginScreen()),
                                  ),
                                  (route) => false);
                            }),
                            child: Text('Log dich ein!'),
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
    );
  }
}

class TermsAndConditionSwitch extends StatefulWidget {
  const TermsAndConditionSwitch({super.key});

  @override
  State<TermsAndConditionSwitch> createState() =>
      _TermsAndConditionSwitchState();
}

class _TermsAndConditionSwitchState extends State<TermsAndConditionSwitch> {
  bool agbAgreed = false;

  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Track color when the switch is selected.
        if (states.contains(MaterialState.selected)) {
          return kAccentColor;
        }
        // Otherwise return null to set default track color
        // for remaining states such as when the switch is
        // hovered, focused, or disabled.
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Material color when switch is selected.
        if (states.contains(MaterialState.selected)) {
          return kAccentColor.withOpacity(0.3);
        }
        // Material color when switch is disabled.
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        // Otherwise return null to set default material color
        // for remaining states such as when the switch is
        // hovered, or focused.
        return null;
      },
    );
    final MaterialStateProperty<Color?> thumbColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Material color when switch is selected.
        if (states.contains(MaterialState.selected)) {
          return kAccentColor.withOpacity(0.3);
        }
        // Otherwise return null to set default material color
        // for remaining states such as when the switch is
        // hovered, or focused.
        return Colors.black;
      },
    );
    return Switch(
      value: agbAgreed,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbColor: thumbColor,
      onChanged: (bool value) {
        setState(() {
          agbAgreed = value;
        });
      },
    );
  }
}
