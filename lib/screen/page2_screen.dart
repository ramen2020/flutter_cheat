import 'package:flutter/material.dart';
import './button/buttons_screen.dart';
import './checkbox/check_box_screen.dart';
import './grid/grid_screen.dart';
import './list/list_screen.dart';
import './progress/progress_screen.dart';
import './scrollview/scroll_view_screen.dart';
import './slider/slider_view_screen.dart';
import './wave/wave_screen.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

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
                  child: const Text('buttons_screen'),
                  onPressed: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ButtonsScreen(),
                        ));
                  }),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[200],
                ),
                child: const Text('checkbox_screen'),
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CheckBoxScreen(),
                      ));
                },
              ),

              ElevatedButton(
                child: const Text('scroll_view'),
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScrollViewScreen(),
                      ));
                },
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[200],
                ),
                child: const Text('slider_screen'),
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
                child: const Text('progress_screen'),
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProgressScreen(),
                      ));
                },
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[200],
                  ),
                  child: const Text('GridScreen'),
                  onPressed: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GridScreen(),
                        ));
                  }),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown[200],
                  ),
                  child: const Text('ListScreen'),
                  onPressed: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListScreen(),
                        ));
                  }),

              ElevatedButton(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Colors.blue[300],
                        Colors.blue[500],
                        Colors.blue[700],
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Text('WaveScreen'),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WaveScreen(),
                      ));
                },
              ),

              ElevatedButton.icon(
                icon: const Icon(
                  Icons.dangerous,
                  color: Colors.white,
                ),
                label: const Text('Button'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
                onPressed: () {},
              ),
            ]));
  }
}
