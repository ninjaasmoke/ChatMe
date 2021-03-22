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
        body: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).appBarTheme.backgroundColor,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 8, 32),
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(100)),
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    //TODO: replace with image
                    Icons.person,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TODO: replace with real data
                      Text(
                        "ninjaasmoke",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "917892536762",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
