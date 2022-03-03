import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData themeDataLight(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          elevation: 5,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.deepPurple),
          // ignore: deprecated_member_use
          textTheme: Theme.of(context).textTheme,
        ),
      );
  static ThemeData themeDataDark(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
