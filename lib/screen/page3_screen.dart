import 'package:flutter/material.dart';
import './webview/webview_screen.dart';

class Page3 extends StatelessWidget {
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
                  child: Text('WebViewScreen'),
                  onPressed: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewScreen(),
                        ));
                  }),

              // ElevatedButton(
              //   child: Text('checkbox_screen'),
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => CheckBoxScreen(),
              //         ));
              //   },
              // )
            ]));
  }
}
