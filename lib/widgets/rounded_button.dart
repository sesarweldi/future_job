import 'package:flutter/material.dart';
import 'package:jobs_app/theme.dart';

class RoundedButton2 extends StatelessWidget {
  final String text;
  final Color backgroundColor, textColor, outlineColor;
  final VoidCallback press;

  const RoundedButton2(
      {required this.text,
      required this.backgroundColor,
      required this.textColor,
      required this.outlineColor,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 45,
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 14, color: textColor),
        ),
        onPressed: press,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            side: BorderSide(color: outlineColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66))),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Color backgroundColor = primaryColor, textColor;
  final VoidCallback press;

  RoundedButton(
      {required this.text, required this.textColor, required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: medium, fontSize: 14, color: textColor),
        ),
        onPressed: press,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66))),
      ),
    );
    ;
  }
}
