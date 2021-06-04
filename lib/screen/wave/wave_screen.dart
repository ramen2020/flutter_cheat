import 'package:flutter/material.dart';
import './ripple_painter.dart';

class WaveScreen extends StatefulWidget {
  const WaveScreen({Key key}) : super(key: key);
  @override
  _WaveScreenState createState() => _WaveScreenState();
}

class _WaveScreenState extends State<WaveScreen> with TickerProviderStateMixin {
  AnimationController _rippleAnimationController;

  @override
  void initState() {
    super.initState();
    _rippleAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: false);
    _rippleAnimationController.repeat(
      period: const Duration(milliseconds: 1000),
    );
  }

  @override
  void dispose() {
    _rippleAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WaveScreen'),
        ),
        body: Container(
            color: Colors.pink[100],
            child: ListView(children: [
              Column(children: [
                CustomPaint(
                  painter:
                      RipplePainter(_rippleAnimationController, 117, 81, 240),
                  child: SizedBox(
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
                CustomPaint(
                  painter:
                      RipplePainter(_rippleAnimationController, 151, 101, 140),
                  child: Image(
                    image: AssetImage('assets/irasutoya/irasutoya2.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                CustomPaint(
                  painter:
                      RipplePainter(_rippleAnimationController, 255, 255, 255),
                  child: Image(
                    image: AssetImage('assets/irasutoya/irasutoya1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                )
              ]),
            ])));
  }
}
