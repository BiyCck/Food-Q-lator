import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_q_lator/services/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  startAnimation() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushNamed(context, '/onboarding1');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF00BCD4),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome to the Food-Q-Lator',
                style: kTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          const Icon(
            Icons.calculate,
            color: Colors.white,
            size: 150.0,
          ),
        ],
      ),
    );
  }
}
