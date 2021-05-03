import 'package:flutter/material.dart';
import './button/buttons_screen.dart';
import './checkbox/check_box_screen.dart';
import './slider/slider_view_screen.dart';
import './scrollview/scroll_view_screen.dart';
import './progress/progress_screen.dart';
import './grid/grid_screen.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple[100],
        alignment: Alignment.center,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 画面遷移
              ElevatedButton(
                  child: Text('buttons_screenx'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ButtonsScreen(),
                        ));
                  }),

              ElevatedButton(
                child: Text('checkbox_screen'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckBoxScreen(),
                      ));
                },
              ),

              ElevatedButton(
                child: Text('scroll_view'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScrollViewScreen(),
                      ));
                },
              ),

              ElevatedButton(
                child: Text('slider_screen'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SliderViewScreen(),
                      ));
                },
              ),

              ElevatedButton(
                child: Text('progress_screen'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProgressScreen(),
                      ));
                },
              ),

              ElevatedButton(
                  child: Text('GridScreen'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GridScreen(),
                        ));
                  }),
            ]));
  }
}
