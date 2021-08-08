import 'package:flutter/material.dart';

class RefreshIndicatorScreen extends StatefulWidget {
  @override
  _RefreshIndicatorScreenState createState() => _RefreshIndicatorScreenState();
}

class _RefreshIndicatorScreenState extends State<RefreshIndicatorScreen> {
  List _titleList = ["下に引っ張って（スワイプ）ください"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RefreshIndicatorScreen'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await _addText();
        },
        child: ListView(
          children: _titleList
              .map((title) => ListTile(
                    title: Text(title),
                  ))
              .toList(),
        ),
      ),
    );
  }

  _addText() {
    setState(() {
      _titleList.add("test");
    });
  }
}
