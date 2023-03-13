import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../widgets/custom_painter.dart';
import '../constants/colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg,
      appBar: AppBar(
        backgroundColor: Palette.primary,
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Palette.bg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Category image
                Stack(
                  children: [
                    Container(
                      color: Palette.bg,
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: const CustomPaint(
                        painter: HeaderCurveImagePainter(),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const SearchBar(),
                      ),
                    ),
                  ],
                ),
                // Icons carousel
                const SizedBox(height: 20),
                Text(
                  'Basically Burger',
                  style: TextStyle(
                    color: Palette.dark,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                CustomShapedIconList(color: Palette.secondary),

                // Promo carousel (sellers)
                const PromoPrimeCard(),
                const PromoPrimeCard(),
                const PromoPrimeCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
