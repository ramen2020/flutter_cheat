import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ButtonsScreen')),
      body: Container(
          color: Colors.red[100],
          alignment: Alignment.center,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(onPressed: () {}, child: Text('TextButton')),
              ])),
    );
  }
}
