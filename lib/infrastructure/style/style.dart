import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';

ThemeData rentopTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Comfortaa',
    primaryColor: mainColor,
    textTheme: TextTheme(
        displayLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 35,
          color: minorColor,
        ),
        displayMedium: const TextStyle(fontWeight: FontWeight.w800),
        bodyLarge: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
        bodyMedium: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        titleMedium: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14,
          color: minorShadeColor,
        ),
        labelLarge: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 20,
        )),
  );
}
