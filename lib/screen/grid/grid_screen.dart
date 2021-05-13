import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({Key key}) : super(key: key);
  @override
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ProgressScreen'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                  // これ重要
                  child: GridView.count(
                      crossAxisCount: 3, // 1行に表示する数
                      crossAxisSpacing: 4.0, // 縦スペース
                      mainAxisSpacing: 4.0, // 横スペース
                      shrinkWrap: true,
                      children: List.generate(30, (index) {
                        return Container(
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                            child: GridTile(
                                child: const Icon(Icons.map),
                                footer: Center(
                                  child: Text(
                                    'Meeage $index',
                                  ),
                                )));
                      })))
            ]));
  }
}
