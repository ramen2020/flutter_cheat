import 'package:flutter/material.dart';
import 'sample/sample1_screen.dart';
import 'sample/sample2_screen.dart';

class SampleScreen extends StatelessWidget {
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
                  child: Text('Sample1'),
                  onPressed: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sample1Screen(),
                        ));
                  }),
              ElevatedButton(
                child: Text('Sample2'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sample2Screen(),
                      ));
                },
              )
            ]));
  }
}
