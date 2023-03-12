import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.secondary,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Palette.bg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const _CustomHeader(),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: CustomPaint(
                    painter: _HeaderPaintDiagonal(),
                  ),
                ),
                const SizedBox(height: 20),
                const _OrderAgainHorizontalScroll(),
                const _PromoPrimeCard(),
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

class _PromoPrimeCard extends StatelessWidget {
  const _PromoPrimeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width,
          color: Palette.secondary,
          child: Stack(
            children: [
              Positioned(
                bottom: -40,
                right: -20,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Palette.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Prime',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Subscribe to prime\nto get more discounts'),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Get Prime',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Image(
                      image: AssetImage('assets/images/burger1.png'),
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
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
              return const CustomShapedCard();
            },
          ),
        ),
      ],
    );
  }
}

class CustomShapedCard extends StatelessWidget {
  const CustomShapedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ShapedContainer(
          size: 140,
          child: Image(
            image: AssetImage('assets/images/image1.jpg'),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Basically burger',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.favorite_outline,
              size: 20,
            ),
            SizedBox(width: 2),
            Text('98%'),
            SizedBox(width: 6),
            Text('(123)'),
          ],
        ),
      ],
    );
  }
}

class _CustomHeader extends StatelessWidget {
  const _CustomHeader({
    Key? key,
  }) : super(key: key);

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

    return Container(
      width: MediaQuery.of(context).size.width,
      color: Palette.secondary,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Header(),
          ),
          SizedBox(
            height: 72,
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

class ShapedContainer extends StatelessWidget {
  const ShapedContainer({
    Key? key,
    this.child,
    this.size = 80.0,
  }) : super(key: key);

  final Widget? child;
  final double? size;

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
        // padding: const EdgeInsets.all(10),
        color: Palette.bg,
        child: child,
      ),
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Palette.bg,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const TextField(
                  cursorColor: Colors.black26,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    label: Text(
                      'What can we get you?',
                      style: TextStyle(color: Colors.black26),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black26,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            CircleAvatar(
              backgroundColor: Palette.primary,
              foregroundImage: const NetworkImage(
                'https://picsum.photos/200/300',
              ),
              child: const Text('JA'),
            )
          ],
        ),
      ],
    );
  }
}

class _HeaderPaintDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Palette.secondary
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.5);
    path.quadraticBezierTo(
      size.width * 0.8,
      size.height,
      size.width * 0.5,
      size.height,
    );
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height,
      0,
      size.height * 0.5,
    );
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
