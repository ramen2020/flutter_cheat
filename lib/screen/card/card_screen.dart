import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ButtonsScreen')),
        body: Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            color: Colors.red[200],
            alignment: Alignment.center,
            child: ListView(children: [
              card1(context),
              card2(context),
              card3(context),
              card4(context),
              card5(context),
              card6(context),
              card7(context),
            ])));
  }
}

Widget card1(BuildContext context) {
  return Card(
    child: Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '''Ramen, whether soy sauce, salt, or miso,
has an invaluable impact on your life.''',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),
          Text(
            'Ramen will save the world.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget card2(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Ramen',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Ramen will save the world.',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    ),
  );
}

Widget card3(BuildContext context) {
  return Container(
      padding: const EdgeInsets.all(30),
      child: Card(
        shadowColor: Colors.red,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.purple[300]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ramen Station',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Eating udon noodles at the ramen station',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ));
}

Widget card4(BuildContext context) {
  return Padding(
      // shadowの上にpaddingつけないとおかしくなる。
      padding: const EdgeInsets.all(16),
      child: Container(
          // shadow
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 1,
                offset: Offset(0, 0))
          ]),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage('assets/ramen/ramen7.jpeg'),
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  'Ramen Card !!!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          )));
}

Widget card5(BuildContext context) {
  return Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Image(
              image: AssetImage('assets/ramen/ramen4.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              bottom: 15,
              // right: 16,
              left: 20,
              child: Text(
                'do you like ramen???',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            '''
How often do you eat ramen? Ramen has a positive effect on the body. 
For example, it gives you energy. 
It generates adrenaline and improves performance.
                        ''',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text('about ramen'),
              onPressed: () {},
            ),
            TextButton(
              child: Text('place'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}

Widget card6(BuildContext context) {
  var heading = '\Popular Ramen';
  var subheading = 'shibuya / Tokyo';
  var cardImage = AssetImage('assets/ramen/ramen8.jpeg');
  var supportingText = '''
You will never know this ramen. It tastes normal.
Rich is bad. The price is not cheap.
But this ramen gives you power.
The reason is that it is made from an energy drink.
And the waitress is beautiful.Wow
      ''';

  return Card(
      elevation: 4.0,
      child: Column(
        children: [
          ListTile(
            title: Text(heading),
            subtitle: Text(subheading),
            trailing: Icon(Icons.favorite),
          ),
          Container(
            height: 200.0,
            child: Ink.image(
              image: cardImage,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(supportingText),
          ),
          ButtonBar(
            children: [
              TextButton(
                child: const Text('CONTACT'),
                onPressed: () {/* ... */},
              ),
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {/* ... */},
              )
            ],
          )
        ],
      ));
}

Widget card7(BuildContext context) {
  return Padding(
      // shadowの上にpaddingつけないとおかしくなる。
      padding: const EdgeInsets.all(16),
      child: Container(
          // shadow
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 1,
                offset: Offset(0, 0))
          ]),
          child: Card(
            child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/ramen/ramen4.jpeg'),
                    ),
                  ),
                ),
                title: Text("Coffee flavored ramen"),
                subtitle: Text("kyoto / kyoto-city"),
              ),
              Image(
                image: AssetImage('assets/ramen/ramen4.jpeg'),
                fit: BoxFit.fitWidth,
              ),
              ButtonBar(
                children: <Widget>[
                  TextButton(
                    child: const Text('DIRECTION'),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: const Text('MAP'),
                    onPressed: () {},
                  ),
                ],
              ),
            ]),
          )));
}
