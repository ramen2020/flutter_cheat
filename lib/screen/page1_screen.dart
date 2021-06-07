import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './page6_screen.dart';
import './card/card_screen.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

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
              child: const Text('button'),
              onPressed: () {
                Navigator.push<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page6(),
                    ));
              },
            ),
            popUpButton(context),
            // アラート　AlertDialog
            alertDialogButton(context),
            // アラート　SimpleDialog
            simpleDialogButton(context),
            // AboutDialog アプリ名やversionを表示。あまり使わないほうがいい。
            aboutDialogButton(context),
            // CupertinoDialog あまり使用するのは良くない。
            cupertinoDialogButton(context),
            // ハーフモーダル showBottomSheet
            showBottomSheetButton(context),
            // ハーフモーダル showModalBottomSheet
            showModalBottomSheetButton(context),
            // モーダル遷移
            modalButton(context),
            // indicator
            indicatorButton(context),
          ]),
    );
  }
}

Widget popUpButton(BuildContext context) {
  return ElevatedButton(
      child: const Text(
        'AlertDialog',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.yellow, //ボタンの背景色
      ),
      onPressed: () async {
        await showDialog<void>(
            context: context,
            builder: (context) {
              Column(
                children: <Widget>[
                  AlertDialog(
                    title: Text("タイトル"),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Column(children: <Widget>[
                            // コンテンツ
                            Text("テストです"),
                            Text("テストです"),
                            Text("テストです"),
                          ]),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      // ボタン
                    ],
                  ),
                ],
              );
            });
      });
}

// アラート　AlertDialog
Widget alertDialogButton(BuildContext context) {
  return ElevatedButton(
      child: const Text(
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
          builder: (context) {
            return AlertDialog(
              title: const Text('AlertDialog'),
              content: const Text('ダイアログ出動！'),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.of(context).pop(0),
                ),
                ElevatedButton(
                  child: const Text('OK'),
                  onPressed: () => Navigator.of(context).pop(1),
                ),
              ],
            );
          },
        );
      });
}

// アラート　SimpleDialog
Widget simpleDialogButton(BuildContext context) {
  return ElevatedButton(
      child: const Text(
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
            builder: (context) {
              return SimpleDialog(
                title: const Text('何が好きですか？'),
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
      });
}

// AboutDialog アプリ名やversionを表示。あまり使わないほうがいい。
Widget aboutDialogButton(BuildContext context) {
  return ElevatedButton(
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
          applicationIcon: const Icon(Icons.photo),
          applicationName: "アプリ名",
          applicationVersion: "2.0.1",
          applicationLegalese: "あいうえお",
        );
      });
}

// CupertinoDialog あまり使用するのは良くない。
Widget cupertinoDialogButton(BuildContext context) {
  return ElevatedButton(
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
          builder: (context) {
            return CupertinoAlertDialog(
              title: const Text("タイトル"),
              content: const Text("メッセージ"),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: const Text("Delete"),
                  isDestructiveAction: true,
                  onPressed: () => Navigator.pop(context),
                ),
                CupertinoDialogAction(
                  child: const Text("OK"),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            );
          },
        );
      });
}

// ハーフモーダル showBottomSheet
Widget showBottomSheetButton(BuildContext context) {
  return ElevatedButton(
      child: const Text('showBottomSheet'),
      style: ElevatedButton.styleFrom(
        primary: Colors.green[300],
      ),
      onPressed: () {
        Scaffold.of(context).showBottomSheet<void>(
          (context) {
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
      });
}

// ハーフモーダル showModalBottomSheet
Widget showModalBottomSheetButton(BuildContext context) {
  return ElevatedButton(
      child: const Text('showModalBottomSheet'),
      style: ElevatedButton.styleFrom(
        primary: Colors.green[300],
      ),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (context) {
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
      });
}

// ハーフモーダル showModalBottomSheet
Widget modalButton(BuildContext context) {
  return ElevatedButton(
    child: const Text('modal'),
    onPressed: () {
      Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (_) => CardScreen(),
            fullscreenDialog: true, // modal toransition
          ));
    },
  );
}

// indicator
Widget indicatorButton(BuildContext context) {
  return ElevatedButton(
    child: const Text('indicator'),
    style: ElevatedButton.styleFrom(
      primary: Colors.deepPurple,
    ),
    onPressed: () async {
      showGeneralDialog(
          context: context,
          barrierDismissible: false, // 画面タップで閉じるを無効
          transitionDuration:
              const Duration(milliseconds: 300 // フェードインアウト時間を300ms
                  ),
          barrierColor: Colors.black.withOpacity(0.5), // 背景色
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          });
      // ３秒後にダイアログを閉じる
      await Future<void>.delayed(const Duration(seconds: 3));
      Navigator.of(context).pop();
    },
  );
}
