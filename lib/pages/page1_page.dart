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
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: ElevatedButton(
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
