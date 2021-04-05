import 'package:flutter/material.dart';

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
              // ElevatedButton(
              //     child: Text('buttons_screenx'),
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => ButtonsScreen(),
              //           ));
              //     }),

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


    // return Column(
    //   children: [
    //     Text('title'),
    //     Container(
    //         width: 1030,
    //         child: Row(children: <Widget>[
    //           const SizedBox(
    //             width: 30,
    //             height: 400,
    //             child: Text('固定表示させたいパーツ'),
    //           ),
    //           Expanded(
    //               child: SingleChildScrollView(
    //                   scrollDirection: Axis.horizontal,
    //                   child: Row(children: <Widget>[
    //                     SizedBox(
    //                         width: 100,
    //                         height: 400,
    //                         child: const Text('横にスクロールしたいパーツ')),
    //                     SizedBox(
    //                         width: 100,
    //                         height: 400,
    //                         child: const Text('横にスクロールしたいパーツ')),
    //                     SizedBox(
    //                         width: 100,
    //                         height: 400,
    //                         child: const Text('横にスクロールしたいパーツ')),
    //                     SizedBox(
    //                         width: 100,
    //                         height: 400,
    //                         child: const Text('横にスクロールしたいパーツ')),
    //                     SizedBox(
    //                         width: 100,
    //                         height: 400,
    //                         child: const Text('横にスクロールしたいパーツ')),
    //                   ])))
    //         ]))
    //   ],
