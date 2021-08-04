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
              Image.asset('assets/ramen/ramen3.jpeg', fit: BoxFit.cover),
              Positioned(
                bottom: 15,
                left: 20,
                child: Text(
                  'Ramen sample2',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _items(context),
            ],
          ),
        ),
      ]))
    ]));
  }
}

Widget _items(BuildContext context) {
  final girdList = [
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
      bottom: 20,
      right: 30,
      left: 30,
    ),
    child: GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: girdList,
    ),
  );
}

Widget _cardWidget(BuildContext context) {
  return InkWell(
      splashColor: Colors.blueAccent,
      onTap: () {
        _onItemDetailModal(context);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/ramen/ramen7.jpeg'),
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  bottom: 15,
                  // right: 16,
                  left: 20,
                  child: Text(
                    'do you ramen???',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'harazyuku ramen',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text(
                          'free drink',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ])),
            ),
          ],
        ),
      ));
}

void _onItemDetailModal(BuildContext context) {
  showModalBottomSheet<void>(
      // isScrollControlled: true, フルスクリーン
      context: context,
      builder: (context) {
        return Container(
            child: Column(
          children: <Widget>[
            _imageDetail(context),
          ],
        ));
      });
}

Widget _imageDetail(BuildContext context) {
  void showProgressDialog() {
    showGeneralDialog(
        context: context,
        barrierDismissible: false,
        transitionDuration: const Duration(milliseconds: 300),
        barrierColor: Colors.black.withOpacity(0.5),
        pageBuilder: (BuildContext context, Animation animation,
            Animation secondaryAnimation) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  return Column(
    children: <Widget>[
      Container(
        color: Colors.amberAccent,
        width: 300,
        height: 200,
        margin: const EdgeInsets.fromLTRB(20, 30, 20, 10),
        child: const Center(
          child: Image(
            image: AssetImage('assets/ramen/ramen7.jpeg'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      Container(
        width: 300,
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: const Text(
          '''
Have you ever heard of this ramen that exists in Harajuku?
This ramen is a soy sauce ramen that is limited to 50 servings a day. 
The name of the store is "Ramen will save the world".
          ''',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF302D2D),
            ),
            child: const Text(
              "what's this ramen???",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onPressed: () async {
              showProgressDialog();
              await Future<dynamic>.delayed(const Duration(seconds: 2));
              Navigator.pop(context);
              Navigator.pop(context);
            },
          )),
    ],
  );
}
