import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  @override
  _CheckBoxScreenState createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
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
