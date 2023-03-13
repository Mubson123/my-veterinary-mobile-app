import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyVeterinaryAppThemes {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline1: GoogleFonts.sansita(
      fontSize: 60.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: GoogleFonts.sansita(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 19.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    headline4: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline5: GoogleFonts.openSans(
      fontSize: 25.0,
      fontWeight: FontWeight.normal,
      color: Colors.deepOrangeAccent,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      color: Colors.deepOrangeAccent,
    ),

  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.deepOrangeAccent,
    ),
    headline1: GoogleFonts.sansita(
      fontSize: 60.0,
      fontWeight: FontWeight.bold,
      color: Colors.deepOrangeAccent,
    ),
    headline2: GoogleFonts.sansita(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color: Colors.deepOrangeAccent,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 19.0,
      fontWeight: FontWeight.normal,
      color: Colors.deepOrangeAccent,
    ),
    headline4: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.deepOrangeAccent,
    ),
    headline5: GoogleFonts.openSans(
      fontSize: 25.0,
      fontWeight: FontWeight.normal,
      color: Colors.deepOrangeAccent,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      color: Colors.deepOrangeAccent,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      primaryColor: Colors.white,
      primarySwatch: Colors.deepOrange,
      brightness: Brightness.light,
      highlightColor: Colors.white.withOpacity(0.2),
      hoverColor: Colors.transparent,
      disabledColor: Colors.grey,
      splashColor: Colors.white.withOpacity(0.2),
      backgroundColor: Colors.deepOrangeAccent,
      errorColor: Colors.red,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.deepOrangeAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      primaryColor: Colors.white,
      primarySwatch: Colors.deepOrange,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      backgroundColor: Colors.white,
      errorColor: Colors.red,
      brightness: Brightness.dark,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.deepOrangeAccent),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData.fallback(),
        foregroundColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.black.withOpacity(.2),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.black.withOpacity(.2),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
      ),
      textTheme: darkTextTheme,
    );
  }
}