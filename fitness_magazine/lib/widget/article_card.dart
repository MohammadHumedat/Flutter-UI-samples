import 'package:flutter/material.dart';
import 'package:fitness_magazine/model/article.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArticleCard extends StatelessWidget {
  final Article mainSectionArticles;
  const ArticleCard({super.key, required this.mainSectionArticles});

  @override
  Widget build(BuildContext context) {
    // This the layout structure of main article, after you click on card.
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        color: Colors.white,
        height: 320,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Hero(
                    tag: ('${mainSectionArticles.category}'),
                    child: CachedNetworkImage(
                      imageUrl: ('${mainSectionArticles.url}'),
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  // child: Container(
                  //   height: 180,
                  //   width: 300,
                  //   alignment: Alignment.topCenter,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     image: DecorationImage(
                  //       alignment: Alignment.topCenter,
                  //       fit: BoxFit.cover,
                  //       image: NetworkImage('${mainSectionArticles.url}'),
                  //     ),
                  //   ),
                  // ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_border, color: Colors.white),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(color: mainSectionArticles.color),
                child: Center(
                  child: Text(
                    '${mainSectionArticles.category}',
                    style: TextStyle(
                      fontFamily: 'Somar',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                ' ${mainSectionArticles.title}',
                style: TextStyle(
                  fontFamily: 'Somar',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '${mainSectionArticles.content}',
                style: TextStyle(
                  fontFamily: 'Somar',
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 2,
                // textAlign: TextAlign.end,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Hero(
//                     tag: ('${mainSectionArticles.category}'),
//                     child: CachedNetworkImage(
//                       imageUrl: ('${mainSectionArticles.url}'),
//                       width: double.infinity,
//                       height: 150,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
