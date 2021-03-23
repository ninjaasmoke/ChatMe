import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          page1(),
        ],
      ),
    );
  }

  Widget page1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 60,
        ),
        Center(
          child: Text(
            "Welcome to ChatMe",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        SizedBox(
          height: 60,
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Text(
            "Continue",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          label: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Theme.of(context).accentColor,
            size: 12,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
