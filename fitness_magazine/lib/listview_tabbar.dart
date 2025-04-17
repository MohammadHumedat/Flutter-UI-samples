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
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFfccd0a),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 110,
                      height: 100,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/icons/png/placeholder.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
