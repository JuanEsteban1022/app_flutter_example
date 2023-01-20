import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.teal;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
    // FloatingActionButtons
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: primary, elevation: 5),
    // ElevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: primary,
      shape: const StadiumBorder(),
      elevation: 0,
    )),
    // InputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
    ),
  );
}
