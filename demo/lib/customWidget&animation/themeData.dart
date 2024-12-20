import 'package:flutter/material.dart';

class ThemeDataStyle {
  static ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        primary: Colors.deepPurple.shade200,
        secondary: Colors.deepPurple.shade300),
  );

  static ThemeData darkMode = ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
          surface: Colors.grey.shade900,
          primary: Colors.deepPurple.shade500,
          secondary: Colors.purple.shade700));
}
