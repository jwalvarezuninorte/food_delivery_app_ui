import 'package:flutter/material.dart';

import 'package:food_delivery_app_ui/screens/screens.dart';

const String homeRoute = '/home';
const String categoryRoute = '/category';
const String orderRoute = '/order';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case categoryRoute:
      return MaterialPageRoute(builder: (context) => const CategoryScreen());
    case orderRoute:
      return MaterialPageRoute(builder: (context) => const OrderScreen());
    default:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
