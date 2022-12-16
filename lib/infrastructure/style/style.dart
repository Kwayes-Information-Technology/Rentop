import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/colors.dart';

ThemeData rentopTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Comfortaa',
    primaryColor: mainColor,
    textTheme: const TextTheme(
      headline1: TextStyle(fontWeight: FontWeight.w700),
      headline2: TextStyle(fontWeight: FontWeight.w800),
      bodyText1: TextStyle(fontWeight: FontWeight.w400),
      bodyText2: TextStyle(fontWeight: FontWeight.w600),
    ),
  );
}
