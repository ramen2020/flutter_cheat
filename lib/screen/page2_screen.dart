import 'package:flutter/material.dart';
import './button/buttons_screen.dart';
import './checkbox/check_box_screen.dart';
import './grid/grid_screen.dart';
import './list/list_screen.dart';
import './progress/progress_screen.dart';
import './scrollview/scroll_view_screen.dart';
import './slider/slider_view_screen.dart';

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
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black26,
                  ),
                  child: Text('buttons_screen'),
                  onPressed: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ButtonsScreen(),
                        ));
                  }),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[200],
                ),
                child: Text('checkbox_screen'),
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckBoxScreen(),
                      ));
                },
              ),

              ElevatedButton(
                child: Text('scroll_view'),
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScrollViewScreen(),
                      ));
                },
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[200],
                ),
                child: Text('slider_screen'),
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SliderViewScreen(),
                      ));
                },
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink[200],
                ),
                child: Text('progress_screen'),
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProgressScreen(),
                      ));
                },
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[200],
                  ),
                  child: Text('GridScreen'),
                  onPressed: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GridScreen(),
                        ));
                  }),
            ]));
  }
}
