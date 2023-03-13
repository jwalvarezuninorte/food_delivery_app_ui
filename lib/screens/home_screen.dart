import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../widgets/custom_painter.dart';
import '../routes/route.dart' as route;
import '../constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.secondary,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Palette.bg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 260,
                      width: MediaQuery.of(context).size.width,
                      child: CustomPaint(
                        painter: HeaderCurveImagePainter(
                          color: Palette.secondary,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Header(),
                            ),
                            const SizedBox(height: 10),
                            CustomShapedIconList(
                              color: Palette.bg,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const _OrderAgainHorizontalScroll(),
                const PromoPrimeCard(),
                const SizedBox(height: 20),
                const _OrderAgainHorizontalScroll(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OrderAgainHorizontalScroll extends StatelessWidget {
  const _OrderAgainHorizontalScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Order Again from',
            style: TextStyle(
              color: Palette.dark,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 220,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.42),
            padEnds: false,
            itemCount: 10,
            itemBuilder: (context, index) {
              print('index:: $index');
              return CustomShapedCard(
                onTap: () => Navigator.pushNamed(
                  context,
                  route.categoryRoute,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: SearchBar(),
            ),
            const SizedBox(width: 16),
            CircleAvatar(
              backgroundColor: Palette.primary,
              // foregroundImage: const NetworkImage(
              //   'https://picsum.photos/200/300',
              // ),
              child: const Text('JA'),
            )
          ],
        ),
      ],
    );
  }
}
