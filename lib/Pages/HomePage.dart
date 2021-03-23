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
          actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
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
                  height: 1,
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
                child: getChatPage("${randNames[0]}"),
              );
            }
            return getChatPage("${randNames[index % 6]}");
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

  Widget getChatPage(String name) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatsPage(
                      name: name,
                    )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 52,
        color: Theme.of(context).scaffoldBackgroundColor,
        margin: EdgeInsets.symmetric(vertical: 4),
        child: Row(
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
      ),
    );
  }
}
