
import 'package:flutter/material.dart';

class KsText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? fontColor;

  const KsText(
      {super.key,
      required this.text,
      this.fontWeight,
      this.fontSize,
      this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: fontSize, fontWeight: fontWeight, color: fontColor));
  }
}
