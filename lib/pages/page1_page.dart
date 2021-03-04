import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Center(
        child: ElevatedButton(
          child: Text('placetice1'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page6(),
                ));
          },
        ),
      ),
    );
  }
}

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Row(// 1行目
          children: <Widget>[
        Center(
          child: ElevatedButton(
            child: Text('遷移しました'),
            onPressed: () {},
          ),
        ),
        Center(
          child: ElevatedButton(
            child: Text('戻る'),
            onPressed: () {
              // 1つ前に戻る
              Navigator.pop(context);
            },
          ),
        ),
      ]),
    );
  }
}
