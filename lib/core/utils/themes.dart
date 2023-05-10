import 'package:flutter/material.dart';

abstract class Themes {
  static final ThemeData appTheme = ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 119, 114, 114),
      colorScheme: ColorScheme.light(
        primary: Colors.grey,
        // background: Colors.yellow,
      ));
}
