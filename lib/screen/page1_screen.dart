import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
              child: Text('button'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page6(),
                    ));
              },
            ),
            // アラート　AlertDialog
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
            // アラート　SimpleDialog
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
                          title: Text('何が好きですか？'),
                          children: <Widget>[
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context, 1),
                              child: const Text('ラーメン'),
                            ),
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context, 2),
                              child: const Text('焼肉'),
                            ),
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context, 3),
                              child: const Text('白菜'),
                            ),
                          ],
                        );
                      });
                }),

            // AboutDialog アプリ名やversionを表示。あまり使わないほうがいい。
            ElevatedButton(
                child: const Text(
                  'AboutDialog',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
                onPressed: () async {
                  showAboutDialog(
                    context: context,
                    applicationIcon: Icon(Icons.photo),
                    applicationName: "アプリ名",
                    applicationVersion: "2.0.1",
                    applicationLegalese: "あいうえお",
                  );
                }),

            // CupertinoDialog あまり使用するのは良くない。
            ElevatedButton(
                child: const Text(
                  'CupertinoDialog',
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
                      return CupertinoAlertDialog(
                        title: Text("タイトル"),
                        content: Text("メッセージ"),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("Delete"),
                            isDestructiveAction: true,
                            onPressed: () => Navigator.pop(context),
                          ),
                          CupertinoDialogAction(
                            child: Text("OK"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                }),

            // ハーフモーダル showBottomSheet
            ElevatedButton(
                child: const Text('showBottomSheet'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[300],
                ),
                onPressed: () {
                  Scaffold.of(context).showBottomSheet<void>(
                    (BuildContext context) {
                      return Container(
                        height: 500,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('ハーフモーダル'),
                              ElevatedButton(
                                  child: const Text('シートを閉じる'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  })
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),

            // ハーフモーダル showModalBottomSheet
            ElevatedButton(
                child: const Text('showModalBottomSheet'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[300],
                ),
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 400,
                        color: Colors.lightBlue[200],
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('showModalBottomSheet'),
                              ElevatedButton(
                                child: const Text('閉じる'),
                                onPressed: () => Navigator.pop(context),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),

            // indicator
            ElevatedButton(
              child: Text('indicator'),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
              ),
              onPressed: () async {
                showGeneralDialog(
                    context: context,
                    barrierDismissible: false, // 画面タップで閉じるを無効
                    transitionDuration: Duration(milliseconds: 300), // フェードインアウト時間を300ms
                    barrierColor: Colors.black.withOpacity(0.5), // 背景色
                    pageBuilder: (BuildContext context, Animation animation,
                        Animation secondaryAnimation) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    });
                // ３秒後にダイアログを閉じる
                await Future.delayed(Duration(seconds: 3));
                Navigator.of(context).pop();
              },
            ),
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
