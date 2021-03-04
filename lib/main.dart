import 'package:flutter/material.dart';
import 'pages/page1_page.dart';
import 'pages/page2_page.dart';
import 'pages/page3_page.dart';
import 'pages/page4_page.dart';
import 'pages/page5_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_cheat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'flutter_cheat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.blue,
              primaryColor: Colors.red,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: TextStyle(color: Colors.white))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Page1',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_call),
                label: 'Page2',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Page3'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.offline_bolt),
                label: 'Page4',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.edit_attributes),
                label: 'Page5',
              )
            ],
          ),
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}