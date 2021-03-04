import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Center(
        child: ElevatedButton(
          child: Text('placetice1'),
          onPressed: () {
            //
          },
        ),
      ),
    );
  }
}
