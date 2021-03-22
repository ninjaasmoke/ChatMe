import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  final String name;

  const ChatsPage({Key key, @required this.name}) : super(key: key);
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  bool _showSend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.name),
        actions: [
          IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .8,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom == 0 ? 0 : 52),
        child: Row(
          children: [
            IconButton(
                icon: Icon(Icons.sticky_note_2_outlined), onPressed: () {}),
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
                ? IconButton(icon: Icon(Icons.send), onPressed: () {})
                : Container(
                    height: 0,
                    width: 0,
                  )
          ],
        ),
      ),
    );
  }
}
