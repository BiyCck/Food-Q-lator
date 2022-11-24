import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  String text;
  Color color;
  VoidCallback onPressed;

  DefaultButton(
      {super.key,

      required this.color,
      required this.text,
      required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      height: 40.0,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ButtonStyle(),
      ),
    );
  }

}
