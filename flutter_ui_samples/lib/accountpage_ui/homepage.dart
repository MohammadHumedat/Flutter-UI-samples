import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
