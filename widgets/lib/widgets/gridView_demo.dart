import 'dart:math';

import 'package:flutter/material.dart';

class GridviewDemo extends StatelessWidget {
  const GridviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      children: List.generate(6, (index) {
        return ColoredBox(
          color: Color.fromARGB(
            Random().nextInt(255),
            Random().nextInt(255),
            Random().nextInt(255),
            Random().nextInt(255),
          ),
        );
      }),
    );
  }
}
