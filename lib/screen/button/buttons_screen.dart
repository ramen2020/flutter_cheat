import 'package:flutter/material.dart';
import '../page6_screen.dart';

class ButtonsScreen extends StatefulWidget {
  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonsScreen'),
        actions: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
                textTheme: TextTheme().apply(bodyColor: Colors.blue),
                dividerColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.white)),
            child: PopupMenuButton<int>(
              color: Colors.blue,
              itemBuilder: (context) => [
                PopupMenuItem<int>(value: 0, child: Text("page6")),
                PopupMenuItem<int>(value: 1, child: Text("page6")),
                PopupMenuDivider(),
                PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text("ログアウト")
                      ],
                    )),
              ],
              onSelected: (item) => selectedItem(context, item),
            ),
          ),
        ],
      ),
      body: Container(
          color: Colors.red[100],
          alignment: Alignment.center,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(onPressed: () {}, child: Text('TextButton')),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('click here'),
                ),
                ElevatedButton(
                  onPressed: () {/* ボタンが押せる時 */},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 16, // 影
                  ),
                  child: Text('click here'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.library_books),
                  color: Colors.blue,
                  iconSize: 50,
                )
              ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person),
        backgroundColor: Colors.pink[200],
      ),
    );
  }

  void selectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Page6()));
        break;
      case 1:
        print("Privacy Clicked");
        break;
      case 2:
        print("User Logged out");
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Page6()), (route) => false);
        break;
    }
  }
}
