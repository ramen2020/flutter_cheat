import 'package:flutter/material.dart';

class ScrollViewScreen extends StatelessWidget {
  const ScrollViewScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ScrollViewScreen'),
        ),
        body: Container(
            color: Colors.yellow[100],
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    const Text("左は固定で、右はスクロール"),
                    scrollViewRightFixed(context),
                  ]),
                  Column(children: <Widget>[
                    const Text("スクロール　only"),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: const [
                          SizedBox(width: 100, height: 50, child: Text('A')),
                          SizedBox(width: 100, height: 50, child: Text('B')),
                          SizedBox(width: 100, height: 50, child: Text('C')),
                          SizedBox(width: 100, height: 50, child: Text('D')),
                          SizedBox(width: 100, height: 50, child: Text('E')),
                          SizedBox(width: 100, height: 50, child: Text('F')),
                          SizedBox(width: 100, height: 50, child: Text('G')),
                        ]))
                  ]),
                ])));
  }
}

// 左を固定で、右は横スクロール
Widget scrollViewRightFixed(BuildContext context) {
  return SizedBox(
      width: 1030,
      child: Row(children: <Widget>[
        const SizedBox(
          width: 100,
          height: 100,
          child: Text('固定'),
        ),
        Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: const [
                  SizedBox(width: 100, height: 50, child: Text('A')),
                  SizedBox(width: 100, height: 50, child: Text('B')),
                  SizedBox(width: 100, height: 50, child: Text('C')),
                  SizedBox(width: 100, height: 50, child: Text('D')),
                  SizedBox(width: 100, height: 50, child: Text('E')),
                ])))
      ]));
}
