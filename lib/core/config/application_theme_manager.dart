import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static ThemeData applicationThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xFF39A552),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF39A552),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      centerTitle: true,
    ),
  );
}
