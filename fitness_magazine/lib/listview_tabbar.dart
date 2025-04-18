import 'package:fitness_magazine/listview_square.dart';
import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
  const TabCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 18,
            right: 12,
            top: 12,
            bottom: 12,
          ),
          child: ListviewSquare(),
        ),
      ],
    );
  }
}
