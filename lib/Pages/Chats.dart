import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  final String name;
  const ChatsPage({Key key, @required this.name}) : super(key: key);
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  bool _showSend = false;
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.name),
        actions: [
          IconButton(icon: Icon(Icons.videocam_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.call_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {}),
        ],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return true;
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Dark/doodle-1.jpg'),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.only(bottom: 0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    if (index == 2) {
                      return receivedChatBubble(
                          "Some huge!!! Cant type lorem ipsum! How?");
                    }
                    return receivedChatBubble("Some Text");
                  },
                  itemCount: 24,
                  shrinkWrap: true,
                ),
              ),
              bottomTextArea()
            ],
          ),
        ),
      ),
    );
  }

  Widget receivedChatBubble(String message) {
    return Row(
      children: [
        Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .7),
          margin: EdgeInsets.only(
            bottom: 8,
            left: 4,
          ),
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              )),
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child: Text(
            message,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        // Column(
        //   children: [
        //     Text(
        //       "10:49 PM",
        //       style: Theme.of(context).textTheme.headline6,
        //     )
        //   ],
        // )
      ],
    );
  }

  Widget bottomTextArea() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.file_present), onPressed: () {}),
          Expanded(
              child: TextField(
            cursorColor: Theme.of(context).accentColor,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (String pattern) {
              if (pattern.length == 0)
                setState(() {
                  _showSend = false;
                });
              else
                setState(() {
                  _showSend = true;
                });
            },
            decoration: InputDecoration(
                hintText: 'Message',
                hintStyle: Theme.of(context).textTheme.bodyText2,
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          )),
          _showSend
              ? IconButton(
                  icon: Icon(Icons.send, color: Theme.of(context).accentColor),
                  onPressed: () {})
              : Container(
                  height: 0,
                  width: 0,
                )
        ],
      ),
    );
  }
}
