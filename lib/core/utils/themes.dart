import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const cPrimaryColor = Color(0xFF166955);
const cWhite = Colors.white;
const cBlack = Colors.black;
const productTileColor = Color(0xFFAEE0D4);

abstract class Themes {
  static final ThemeData appTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: cWhite, elevation: 0),
      textTheme: GoogleFonts.poppinsTextTheme(),
      colorScheme: ColorScheme.light(
        primary: Colors.grey,
        // background: Colors.yellow,
      ));
}
