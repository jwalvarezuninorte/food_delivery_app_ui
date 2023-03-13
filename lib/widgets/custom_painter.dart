import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/constants/colors.dart';

class HeaderCurveImagePainter extends CustomPainter {
  const HeaderCurveImagePainter({this.color});

  final Color? color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color ?? Palette.primary
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.92);
    // path.lineTo(size.width * 0.5, size.height);
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height,
      size.width * 0.5,
      size.height,
    );
    // path.lineTo(size.width, size.height * 0.92);
    path.quadraticBezierTo(
      size.width * 0.8,
      size.height,
      size.width,
      size.height * 0.92,
    );
    path.lineTo(size.width, 0);

    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
