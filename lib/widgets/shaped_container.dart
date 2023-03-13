import 'dart:math';

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ShapedContainer extends StatelessWidget {
  const ShapedContainer({
    Key? key,
    this.child,
    this.size = 80.0,
    this.color,
  }) : super(key: key);

  final Widget? child;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    bool random1 = Random().nextBool();
    bool random2 = Random().nextBool();
    bool random3 = Random().nextBool();
    bool random4 = Random().nextBool();

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(random1 ? 10 : 50),
        topRight: const Radius.circular(50),
        bottomLeft: const Radius.circular(50),
        bottomRight: Radius.circular(random4 ? 10 : 50),
      ),
      child: Container(
        width: size,
        height: size,
        color: color ?? Palette.bg,
        child: child,
      ),
    );
  }
}
