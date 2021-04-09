import 'package:flutter/material.dart';

class SliderViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SliderViewScreen'),
        ),
        body: Container(
            color: Colors.yellow[100],
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("SliderViewScreen")
                  ])));
  }
}
