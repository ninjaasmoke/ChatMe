import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SettingsPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
              icon: Icon(
                CupertinoIcons.gear,
                size: 20,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              })
        ],
      ),
    );
  }
}
