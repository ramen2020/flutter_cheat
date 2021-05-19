import 'package:flutter/material.dart';

class WaveScreen extends StatefulWidget {
  const WaveScreen({Key key}) : super(key: key);
  @override
  _WaveScreenState createState() => _WaveScreenState();
}

class _WaveScreenState extends State<WaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WaveScreen'),
        ),
        body: Container(
            color: Colors.pink[100],
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(children: const [
                    Text("Wave"),
                    ]),
                ])));
  }
}
