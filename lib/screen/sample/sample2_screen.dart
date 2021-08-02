import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class Sample2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          brightness: Brightness.dark,
          expandedHeight: 240,
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/ramen/ramen1.jpeg', fit: BoxFit.cover),
              Positioned(
                bottom: 15,
                left: 20,
                child: Text(
                  'Ramen sample',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          )),
      SliverList(
          delegate: SliverChildListDelegate([
        SingleChildScrollView(
            child: Container(
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _items(context),
                    ],
                  ),
                ))),
      ]))
    ]));
  }
}

Widget _items(BuildContext context) {
  final couponList = [
    _cardWidget(context),
    _cardWidget(context),
    _cardWidget(context),
    _cardWidget(context),
    _cardWidget(context),
    _cardWidget(context),
    _cardWidget(context),
    _cardWidget(context),
    _cardWidget(context),
  ];

  return Container(
    padding: const EdgeInsets.only(
      top: 20,
      bottom: 20,
      right: 30,
      left: 30,
    ),
    color: Colors.white,
    child: GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: couponList,
    ),
  );
}

Widget _cardWidget(BuildContext context) {
  return Material(
    color: Colors.blueGrey,
    child: InkWell(
        splashColor: Colors.blueAccent,
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: const Center(
            child: Text(
              'image',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        )),
  );
}
