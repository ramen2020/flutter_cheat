import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 画面遷移
            ElevatedButton(
              child: Text('placetice1'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page6(),
                    ));
              },
            ),
            // アラート・ダイアログ
            ElevatedButton(
                child: Text(
                  'AlertDialog',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow, //ボタンの背景色
                ),
                onPressed: () async {
                  await showDialog<int>(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('AlertDialog'),
                        content: Text('ダイアログ出動！'),
                        actions: <Widget>[
                          ElevatedButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.of(context).pop(0),
                          ),
                          ElevatedButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.of(context).pop(1),
                          ),
                        ],
                      );
                    },
                  );
                }),
            ElevatedButton(
                child: Text(
                  'SimpleDialog',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
                onPressed: () async {
                  await showDialog<int>(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: Text('確認'),
                          children: <Widget>[
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context, 1),
                              child: const Text('選択肢1'),
                            ),
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context, 2),
                              child: const Text('選択肢2'),
                            ),
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context, 3),
                              child: const Text('選択肢3'),
                            ),
                          ],
                        );
                      });
                })
          ]),
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
