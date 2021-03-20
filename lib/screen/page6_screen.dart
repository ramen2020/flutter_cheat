import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                '遷移しました',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, //ボタンの背景色
              ),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('戻る'),
              onPressed: () {
                // 1つ前に戻る
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                "これは押せないボタン",
              ),
            ),
          ]),
    );
  }
}
