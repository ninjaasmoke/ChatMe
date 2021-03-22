import 'package:animations/animations.dart';
import 'package:chatme/Pages/Chats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> randNames = [
  'Simran',
  'Hema Krishna',
  'Hitayshi',
  'Soundarya',
  'Alina Smolyar',
  'Navya'
];

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
        ),
        body: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(
                  width: 68,
                ),
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                  thickness: .1,
                )),
                SizedBox(
                  width: 12,
                ),
              ],
            );
          },
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.only(top: 12),
                child: getAnimationTile("${randNames[0]}"),
              );
            }
            return getAnimationTile("${randNames[index % 6]}");
          },
          itemCount: 20,
        ));
  }

  Widget getAnimationTile(String name) {
    return OpenContainer(
      closedColor: Theme.of(context).scaffoldBackgroundColor,
      openElevation: 0,
      closedElevation: 0,
      openColor: Theme.of(context).scaffoldBackgroundColor,
      middleColor: Theme.of(context).scaffoldBackgroundColor,
      closedBuilder: (context, closedBuilder) => Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey,
            ),
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 52,
            height: 52,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "$name",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
      openBuilder: (context, openBuilder) => ChatsPage(name: name),
    );
  }
}
