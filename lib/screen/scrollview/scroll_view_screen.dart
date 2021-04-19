import 'package:flutter/material.dart';

class ScrollViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ScrollViewScreen'),
        ),
        body: Container(
            color: Colors.yellow[100],
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    Text("左は固定で、右はスクロール"),
                    scrollViewRightFixed(context),
                  ]),
                  Column(children: <Widget>[
                    Text("スクロール　only"),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: <Widget>[
                          SizedBox(
                              width: 100, height: 50, child: const Text('A')),
                          SizedBox(
                              width: 100, height: 50, child: const Text('B')),
                          SizedBox(
                              width: 100, height: 50, child: const Text('C')),
                          SizedBox(
                              width: 100, height: 50, child: const Text('D')),
                          SizedBox(
                              width: 100, height: 50, child: const Text('E')),
                          SizedBox(
                              width: 100, height: 50, child: const Text('F')),
                          SizedBox(
                              width: 100, height: 50, child: const Text('G')),
                        ]))
                  ]),
                ])));
  }
}

// 左を固定で、右は横スクロール
Widget scrollViewRightFixed(BuildContext context) {
  return Container(
      width: 1030,
      child: Row(children: <Widget>[
        SizedBox(
          width: 100,
          height: 100,
          child: Text('固定'),
        ),
        Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  SizedBox(width: 100, height: 50, child: const Text('A')),
                  SizedBox(width: 100, height: 50, child: const Text('B')),
                  SizedBox(width: 100, height: 50, child: const Text('C')),
                  SizedBox(width: 100, height: 50, child: const Text('D')),
                  SizedBox(width: 100, height: 50, child: const Text('E')),
                ])))
      ]));
}
