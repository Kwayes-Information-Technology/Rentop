import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';

ThemeData rentopTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Comfortaa',
    primaryColor: mainColor,
    textTheme: TextTheme(
        headline1: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 35,
          color: minorColor,
        ),
        headline2: const TextStyle(fontWeight: FontWeight.w800),
        bodyText1: const TextStyle(fontWeight: FontWeight.w400),
        bodyText2: const TextStyle(fontWeight: FontWeight.w600),
        subtitle1: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14,
          color: minorShadeColor,
        ),
        button: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 20,
        )),
  );
}
