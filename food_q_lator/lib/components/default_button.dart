import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  String text;
  Color color;
  VoidCallback onPressed;

  DefaultButton(
      {super.key,

      required this.color,
      required this.text,
      required this.onPressed});


  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      height: 50.0,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
          return widget.color;
        }), shape: MaterialStateProperty.resolveWith((states) {
          return RoundedRectangleBorder(
              side: BorderSide.none, borderRadius: BorderRadius.circular(20.0));
        })),
        child: Text(widget.text),
      ),
    );
  }

}
