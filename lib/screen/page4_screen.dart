import 'package:flutter/material.dart';
import './sample/sample1_screen.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  List _titleList = ["test"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sample'),
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
