import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle titleTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  letterSpacing: 0.1,
);

PageTransitionsTheme pageTransitionsTheme = PageTransitionsTheme(builders: {
  TargetPlatform.android: ZoomPageTransitionsBuilder(),
  TargetPlatform.iOS: ZoomPageTransitionsBuilder()
});

ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xfff0a010),
  primarySwatch: Colors.orange,
  fontFamily: 'DMSans',
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  pageTransitionsTheme: pageTransitionsTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xfff0f0f0),
    textTheme: TextTheme(headline6: TextStyle(color: Color(0xfff0a010))),
    elevation: 0,
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'DMSans',
  brightness: Brightness.dark,
  backgroundColor: Color(0xff121212),
  pageTransitionsTheme: pageTransitionsTheme,
  cardColor: Colors.grey[900],
  textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
      bodyText2: TextStyle(color: Colors.grey[600]),
      subtitle2: TextStyle(color: Colors.grey, fontSize: 12),
      headline4: TextStyle(
          color: Colors.grey[100], fontSize: 24, fontWeight: FontWeight.w700),
      headline6: TextStyle(
          fontFamily: 'DMSans',
          color: Color(0xfff0f0f0),
          fontSize: 16,
          fontWeight: FontWeight.w500)),
  iconTheme: IconThemeData(color: Colors.white),
  scaffoldBackgroundColor: Color(0xff080808),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Color(0xff121212),
  ),
  bottomNavigationBarTheme:
      BottomNavigationBarThemeData(backgroundColor: Color(0xff121212)),
);
