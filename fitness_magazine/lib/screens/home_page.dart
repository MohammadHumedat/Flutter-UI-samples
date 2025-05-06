import 'package:fitness_magazine/screens/main_section_article.dart';
import 'package:fitness_magazine/screens/vertical_article_list.dart';
import 'package:fitness_magazine/model/article.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              'مجلة صحية',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'somar',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Column(
          children: [
            // This Line is to display the Horizantal listView that is on the top of page.
            MainSectionArticle(articles: mainSectionArticles),
            //TapBar to show the categorys of this fitness magaizne
            TabBar(
              indicatorColor: const Color.fromARGB(255, 148, 87, 87),
              labelColor: const Color.fromARGB(255, 180, 101, 101),
              unselectedLabelColor: Colors.black,
              labelStyle: const TextStyle(fontFamily: 'somar', fontSize: 15),
              unselectedLabelStyle: const TextStyle(
                fontFamily: 'somar',
                fontSize: 13,
              ),

              //color
              tabs: [
                Tab(text: 'تغذية'),
                Tab(text: 'صحة'),
                Tab(text: 'جمال'),
                Tab(text: 'لياقة'),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  // cards for each category.
                  VerticalArticleList(articles: nutrition),
                  VerticalArticleList(articles: healthy),
                  VerticalArticleList(articles: beauty),
                  VerticalArticleList(articles: fitness),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
