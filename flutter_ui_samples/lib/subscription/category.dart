import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String category;
  Color color;
  Category({required this.category, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Chip(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
        label: Text(
          this.category,
          style: TextStyle(
            color: const Color.fromARGB(255, 92, 91, 91),
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: color,
        labelStyle: const TextStyle(fontWeight: FontWeight.w500),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(
            color: const Color.fromARGB(255, 225, 223, 223),
            width: 1,
          ),
        ),
      ),
    );
  }
}
