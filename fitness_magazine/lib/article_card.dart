import 'package:flutter/material.dart';
import 'package:fitness_magazine/gride_item.dart';
import 'package:fitness_magazine/listview_tap_date.dart';

class mainSectionArticle extends StatelessWidget {
  final List<Article> articles;
  const mainSectionArticle({super.key,  required this.articles});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return GrideItem(mainSectionArticles: articles[index]);
        },
      ),
    );
  }
}
