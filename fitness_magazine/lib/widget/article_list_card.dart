import 'package:fitness_magazine/model/article.dart';
import 'package:fitness_magazine/screens/article_page.dart';
import 'package:flutter/material.dart';

class ArticleListCard extends StatelessWidget {
  final Article article;
  const ArticleListCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArticlePage(articleContent: article,)
      ),
    );
  },
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: article.color,
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
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage('${article.url}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
      
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${article.content}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Somar',
                          fontSize: 11,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
      
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.share, color: Colors.white, size: 20),
                        SizedBox(width: 10),
                        Icon(Icons.remove_red_eye, color: Colors.white, size: 20),
                        SizedBox(width: 10),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
