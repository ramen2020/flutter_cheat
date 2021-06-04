import 'dart:math';
import 'package:flutter/cupertino.dart';

// 波紋を作成するクラス
// ex.)
//    child: CustomPaint(
//     painter: SpritePainter(
//       _animationController,
//     ),
//     child: SizedBox(
//       width: 300.0,
//       height: 300.0,
//     ),
//   ),
class RipplePainter extends CustomPainter {
  final Animation<double> _animation;
  final colorRgb1;
  final colorRgb2;
  final colorRgb3;

  RipplePainter(this._animation, this.colorRgb1, this.colorRgb2, this.colorRgb3)
      : super(repaint: _animation);

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);

    for (int wave = 3; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(RipplePainter oldDelegate) {
    return true;
  }

  void circle(Canvas canvas, Rect rect, double value) {
    double size = rect.width / 1.8;
    double area = size * size;
    double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    double radius = sqrt(area * value / 2.7);
    Color color = Color.fromRGBO(colorRgb1, colorRgb2, colorRgb3, opacity);
    final Paint paint = Paint()..color = color;
    canvas.drawCircle(rect.center, radius, paint);
  }
}
