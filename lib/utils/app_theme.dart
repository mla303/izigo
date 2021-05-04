import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
    primaryColor: const Color(0xff003560),
    accentColor: const Color(0xffffffff),
    fontFamily: 'WorkSans',
    appBarTheme: const AppBarTheme(backgroundColor: const Color(0xffFFFFFF)),
    textTheme: const TextTheme(
      bodyText1: const TextStyle(
        fontFamily: 'WorkSans',
        fontSize: 14,
        color: const Color(0xff9D9EA3),
      ),
      bodyText2: const TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w600,
        color: const Color(0xff9D9EA3),
      ),
      headline2: const TextStyle(
        fontFamily: 'WorkSans',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      headline1: const TextStyle(
        fontFamily: 'WorkSans',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );
}
