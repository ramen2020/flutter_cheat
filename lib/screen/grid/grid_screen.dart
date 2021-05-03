import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  @override
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ProgressScreen'),
        ),
        body: Container(
            color: Colors.yellow[100],
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(children: <Widget>[
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text("He'd have you all unravel at the"),
                          color: Colors.teal[100],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Heed not the rabble'),
                          color: Colors.teal[200],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Sound of screams but the'),
                          color: Colors.teal[300],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Who scream'),
                          color: Colors.teal[400],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Revolution is coming...'),
                          color: Colors.teal[500],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Revolution, they...'),
                          color: Colors.teal[600],
                        ),
                      ],
                    )
                  ]),
                  Column(children: <Widget>[])
                ])));
  }
}
