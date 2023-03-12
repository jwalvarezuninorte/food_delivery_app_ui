import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/routes/route.dart' as route;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      onGenerateRoute: route.controller,
      initialRoute: route.homeRoute,
    );
  }
}
