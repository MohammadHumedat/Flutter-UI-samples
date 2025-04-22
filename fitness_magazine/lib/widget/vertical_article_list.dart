import 'package:fitness_magazine/widget/article_list_card.dart';
import 'package:fitness_magazine/model/article.dart';
import 'package:flutter/material.dart';

class VerticalArticleList extends StatelessWidget {
  final List<Article> articles;

  const VerticalArticleList({super.key, required this.articles});

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
            child: ArticleListCard(article: articles[index]),
          ),
    );
  }
}
