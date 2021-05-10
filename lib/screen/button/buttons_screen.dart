import 'package:flutter/material.dart';
import '../page6_screen.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({Key key}) : super(key: key);
  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonsScreen'),
        actions: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
                textTheme: const TextTheme().apply(bodyColor: Colors.blue),
                dividerColor: Colors.white,
                iconTheme: const IconThemeData(color: Colors.white)),
            child: PopupMenuButton<int>(
              color: Colors.blue,
              itemBuilder: (context) => [
                const PopupMenuItem<int>(value: 0, child: Text("page6")),
                const PopupMenuItem<int>(value: 1, child: Text("page6")),
                const PopupMenuDivider(),
                PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        SizedBox(
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
                TextButton(onPressed: () {}, child: const Text('TextButton')),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('click here'),
                ),
                ElevatedButton(
                  onPressed: () {/* ボタンが押せる時 */},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 16, // 影
                  ),
                  child: const Text('click here'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.library_books),
                  color: Colors.blue,
                  iconSize: 50,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.person_outline_sharp),
                  label: const Text('click here'),
                )
              ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person),
        backgroundColor: Colors.pink[200],
      ),
    );
  }

  void selectedItem(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push<void>(MaterialPageRoute(builder: (context) => Page6()));
        break;
      case 1:
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil<void>(
            MaterialPageRoute(builder: (context) => Page6()), (route) => false);
        break;
    }
  }
}
