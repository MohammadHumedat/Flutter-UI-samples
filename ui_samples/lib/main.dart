import 'package:flutter/material.dart';
import 'package:widgets/payment_UI/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'new widget',
      color: Colors.white,
      home: Scaffold(body: HomePage()),
    );
  }
}
