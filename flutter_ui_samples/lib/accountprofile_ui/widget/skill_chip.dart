import 'package:flutter/material.dart';

//this widget is used to create a chip with a label and a background color
// and a border radius, it is used in the account profile page to show the skills of the user
Widget skillChip(String label) {
  return Container(
    margin: const EdgeInsets.only(right: 8),
    child: Chip(
      label: Text(label),
      backgroundColor: Colors.purple[50],
      labelStyle: const TextStyle(fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: const Color.fromARGB(255, 212, 195, 214)!),
      ),
    ),
  );
}
