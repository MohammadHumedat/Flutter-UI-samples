import 'package:flutter/material.dart';
import 'package:widgets/wrap_demp.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Widget')),
          backgroundColor: Colors.amber,
        ),

        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WrapDemo();
  }
}
