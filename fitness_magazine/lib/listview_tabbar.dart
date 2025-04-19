import 'package:fitness_magazine/listview_square.dart';
import 'package:fitness_magazine/listview_tap_date.dart';
import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
   final List<Article> articles;
  
  const TabCard({ required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: articles.length,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.only(
              left: 18,
              right: 12,
              top: 12,
              bottom: 12,
            ),
            child: ListviewSquare(article:articles[index])
          ),
    );
  }
}
