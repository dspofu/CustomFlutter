import 'package:flutter/material.dart';

Text fastText(String text, Color colorText, double size) {
  return Text(text,
      style: TextStyle(
        color: colorText,
        fontSize: size,
        fontFamily: "monospace"
      )
  );
}