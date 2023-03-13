import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/widgets/shaped_container.dart';

import '../constants/colors.dart';

class CustomShapedIconList extends StatelessWidget {
  const CustomShapedIconList({
    Key? key,
    this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.motorcycle,
      Icons.card_giftcard_rounded,
      Icons.auto_awesome,
      Icons.auto_fix_high_outlined,
      Icons.person,
      Icons.computer,
      Icons.hourglass_bottom_rounded,
      Icons.fastfood_rounded,
      Icons.local_pizza_rounded,
    ];

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.2),
              padEnds: false,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  // margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  padding: const EdgeInsets.all(8.0),
                  child: ShapedContainer(
                    color: color,
                    child: Icon(
                      icons[Random().nextInt(icons.length)],
                      color: Palette.dark,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
