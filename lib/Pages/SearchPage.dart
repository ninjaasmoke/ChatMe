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
              closedColor: Theme.of(context).appBarTheme.backgroundColor,
              openElevation: 0,
              closedElevation: 0,
              openColor: Theme.of(context).appBarTheme.backgroundColor,
              middleColor: Theme.of(context).appBarTheme.backgroundColor,
              closedBuilder: (context, closedBuilder) {
                return ListTile(
                  trailing: Icon(Icons.search, color: Color(0xff808080)),
                  title: Text("Type something here",
                      style: Theme.of(context).textTheme.subtitle2),
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
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: TextField(
                cursorColor: Theme.of(context).accentColor,
                textCapitalization: TextCapitalization.words,
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                      icon: Icon(Icons.arrow_back,
                          color: Theme.of(context).textTheme.bodyText1.color),
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
