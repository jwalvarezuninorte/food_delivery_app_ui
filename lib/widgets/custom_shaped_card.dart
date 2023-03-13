import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/widgets/shaped_container.dart';

class CustomShapedCard extends StatelessWidget {
  const CustomShapedCard({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.red,
      child: Column(
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
      ),
    );
  }
}
