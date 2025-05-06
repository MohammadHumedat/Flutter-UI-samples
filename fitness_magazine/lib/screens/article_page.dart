import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_magazine/model/article.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  final Article articleContent;
  const ArticlePage({super.key, required this.articleContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Hero(
                  tag: ('${articleContent.category}'),
                  child: CachedNetworkImage(
                    imageUrl: ('${articleContent.url}'),
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    placeholder:
                        (context, url) =>
                            Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),

                // Container(
                //   height: 250,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       fit: BoxFit.cover,
                //       image: NetworkImage('${articleContent.url}'),
                //     ),
                //   ),
                // ),
                Positioned(
                  top: 220,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${articleContent.title}',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Somar',
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(height: 20),
                          Text(
                            '${articleContent.content}',
                            style: TextStyle(
                              fontFamily: 'Somar',
                              fontSize: 17,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
