import 'package:flutter/material.dart';

class Sample1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1Screen'),
      ),
      body: SingleChildScrollView(
          child: Container(
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // user登録ボタン
                    _userRegisterBtn(context),
                    _items(context, 'New', 'go new'),
                    const SizedBox(height: 30),
                    _items(context, 'Infomation', 'go infomation'),
                    const SizedBox(height: 30),
                    _items(context, 'Event', 'go event'),
                  ],
                ),
              ))),
    );
  }
}

Widget _userRegisterBtn(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(
      top: 30,
      bottom: 30,
      right: 30,
      left: 30,
    ),
    child: SizedBox(
        width: 300,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0x4CFFFFFF),
          ),
          child: const Text(
            'Smaple1',
            style: TextStyle(
              color: Color(0xFF302D2D),
              fontSize: 20,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/news');
          },
        )),
  );
}

Widget _items(BuildContext context, String title, String subTitle) {
  return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        right: 30,
        left: 30,
      ),
      color: Colors.white,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title),

              // subtitle
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFFFFFF),
                ),
                child: Text(
                  subTitle,
                  style: const TextStyle(
                    color: Color(0xFF302D2D),
                    fontSize: 12,
                  ),
                ),
                onPressed: () {
                  // Navigator.push<MaterialPageRoute>(
                  //   context,
                  //   MaterialPageRoute(
                  //     settings: const RouteSettings(name: '/next'),
                  //     builder: (BuildContext context) => NewsPage(),
                  //     fullscreenDialog: true,
                  //   ),
                  // );
                },
              )
            ]),
        const SizedBox(height: 30),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // スクロールの向きを水平方向に指定
          child: Row(
            children: [
              _cardWidget(
                  color: Colors.blueGrey,
                  image: AssetImage('assets/ramen/ramen1.jpeg')),
              _cardWidget(
                  color: Colors.blueGrey,
                  image: AssetImage('assets/ramen/ramen2.jpeg')),
              _cardWidget(
                  color: Colors.blueGrey,
                  image: AssetImage('assets/ramen/ramen3.jpeg')),
              _cardWidget(
                  color: Colors.blueGrey,
                  image: AssetImage('assets/ramen/ramen4.jpeg')),
              _cardWidget(
                  color: Colors.blueGrey,
                  image: AssetImage('assets/ramen/ramen7.jpeg')),
              _cardWidget(
                  color: Colors.blueGrey,
                  image: AssetImage('assets/ramen/ramen8.jpeg')),
            ],
          ),
        ),
      ]));
}

Widget _cardWidget({double size = 150, Color color, AssetImage image}) {
  return Container(
    color: color,
    width: size,
    height: size,
    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
    child: Center(
      child: Image(
        image: image,
        fit: BoxFit.fitWidth,
      ),
    ),
  );
}
