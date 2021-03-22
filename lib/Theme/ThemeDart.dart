import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle titleTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  letterSpacing: 0.1,
);

ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xfff0a010),
  fontFamily: 'DMSans',
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xfff0f0f0), elevation: 0),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xfff0f0f0),
    textTheme: TextTheme(
        headline6: TextStyle(
            fontFamily: 'DMSans',
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700)),
    elevation: 0,
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'DMSans',
  brightness: Brightness.dark,
  backgroundColor: Color(0xff181818),
  textTheme: TextTheme(
      headline6: TextStyle(
          fontFamily: 'DMSans',
          color: Color(0xfff0f0f0),
          fontSize: 24,
          fontWeight: FontWeight.w700)),
  scaffoldBackgroundColor: Color(0xff121212),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Color(0xff181818),
  ),
  cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.dark,
      barBackgroundColor: Color(0xff181818),
      textTheme: CupertinoTextThemeData(
          primaryColor: Colors.grey[400],
          textStyle: TextStyle(fontFamily: 'DMSans'))),
  bottomNavigationBarTheme:
      BottomNavigationBarThemeData(backgroundColor: Color(0xff181818)),
);
