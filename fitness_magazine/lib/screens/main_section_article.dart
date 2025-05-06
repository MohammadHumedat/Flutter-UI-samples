import 'package:fitness_magazine/screens/article_page.dart';
import 'package:flutter/material.dart';
import 'package:fitness_magazine/widget/article_card.dart';
import 'package:fitness_magazine/model/article.dart';

class MainSectionArticle extends StatelessWidget {
  final List<Article> articles;
  const MainSectionArticle({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    //This ListView to build the main article cards that appers on the top of screens
    return Container(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ArticlePage(articleContent: articles[index]),
                ),
              );
            },
            child: ArticleCard(mainSectionArticles: articles[index]),
          );
        },
      ),
    );
  }
}
