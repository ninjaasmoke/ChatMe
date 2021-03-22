import 'package:flutter/material.dart';

TextStyle titleTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  letterSpacing: 0.1,
);

ThemeData lightTheme = ThemeData(
  fontFamily: 'DMSans',
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  bottomAppBarColor: Colors.grey[200],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.orange[500],
    elevation: 0,
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'DMSans',
  brightness: Brightness.dark,
  backgroundColor: Color(0xff202020),
  scaffoldBackgroundColor: Color(0xff121212),
  textTheme: TextTheme(
    
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Color(0xff181818),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xff181818)
  ),
);