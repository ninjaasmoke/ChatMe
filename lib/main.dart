import 'package:chatme/Pages/App.dart';
import 'package:chatme/Pages/HomePage.dart';
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
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: App()
    );
  }
}
