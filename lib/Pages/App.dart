import 'package:chatme/Pages/HomePage.dart';
import 'package:chatme/Pages/SearchPage.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("ChatMe"),
//      ),
//      body: index == 0 ? HomePage() : SearchPage(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0,
            title: Text("ChatMe"),
          ),
          SliverFillRemaining(
            child: index == 0 ? HomePage() : SearchPage(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}