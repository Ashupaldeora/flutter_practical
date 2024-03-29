import 'package:flutter/material.dart';
import 'package:flutter_practical/view/screen/cartscreen.dart';
import 'package:flutter_practical/view/screen/homescreen.dart';
import 'package:flutter_practical/view/screen/productscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => homescreen(),
        '/product': (context) => productscreen(),
        '/cart': (context) => cartscreen(),
      },
    );
  }
}
