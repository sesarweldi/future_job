import 'package:flutter/material.dart';

import '../theme.dart';



class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController? controllerTextField;
  final ValueChanged<String>? onChanged;
  final Color borderSideColor;
  final TextStyle? textStyle;

  const CustomTextField({Key? key,
    required this.text,
    this.controllerTextField,
    this.onChanged,
    required this.borderSideColor, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style:
            TextStyle(fontWeight: regular, color: greyColor, fontSize: 16)),
        SizedBox(
          height: 8,
        ),
        TextField(
          controller: controllerTextField,
          style: textStyle,
          onChanged: onChanged,
          decoration: InputDecoration(
              hintText: '',
              fillColor: textFieldFillColor,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(color: borderSideColor))),
        )
      ],
    );
    ;
  }
}
