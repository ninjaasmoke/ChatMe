import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Column(
        children: [
          OpenContainer(
              transitionType: _transitionType,
              closedColor: Color(0xff181818),
              openColor: Color(0xff181818),
              middleColor: Color(0xff808080),
              closedBuilder: (context, closedBuilder) {
                return ListTile(
                  tileColor: Color(0xff181818),
                  trailing: Icon(Icons.search, color: Color(0xff808080)),
                  title: Text("Type something here",
                      style: TextStyle(color: Color(0xff808080), fontSize: 12)),
                );
              },
              openBuilder: (context, openBuilder) {
                return SearchHere();
              }),
        ],
      ),
    );
  }
}

class SearchHere extends StatefulWidget {
  @override
  _SearchHereState createState() => _SearchHereState();
}

class _SearchHereState extends State<SearchHere> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Color(0xff181818),
              child: TextField(
                cursorColor: Colors.white,
                textCapitalization: TextCapitalization.words,
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
