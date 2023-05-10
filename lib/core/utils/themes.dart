import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const cPrimaryColor = Color(0xFF166955);
const cWhite = Colors.white;
const cBlack = Colors.black;

abstract class Themes {
  static final ThemeData appTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: GoogleFonts.poppinsTextTheme(),
      colorScheme: ColorScheme.light(
        primary: Colors.grey,
        // background: Colors.yellow,
      ));
}
