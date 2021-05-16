import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key key}) : super(key: key);
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListScreen'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
            //   Expanded(
            //       // これ重要
            //       child:
            // )
            ]));
  }
}
