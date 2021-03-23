import 'package:chatme/Pages/App.dart';
import 'package:chatme/Pages/RegisterPage.dart';
import 'package:flutter/material.dart';

import 'Theme/ThemeDart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      // home: App()
      home: RegisterPage(),
    );
  }
}
