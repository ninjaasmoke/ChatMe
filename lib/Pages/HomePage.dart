import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chats"),
          actions: [
            IconButton(
                icon: Icon(
                  CupertinoIcons.gear,
                  size: 20,
                ),
                onPressed: () {})
          ],
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => ListTile(
            title: Text("$index"),
          ),
          itemCount: 20,
        ));
  }
}
