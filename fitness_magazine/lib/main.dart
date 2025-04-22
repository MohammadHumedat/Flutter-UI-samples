import 'package:fitness_magazine/article_card.dart';
import 'package:fitness_magazine/gride_item.dart';
import 'package:fitness_magazine/last_update_data.dart';
import 'package:fitness_magazine/listview_tabbar.dart';
import 'package:fitness_magazine/listview_tap_date.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final List<Locale> appSupportedLocales = const [Locale('ar')];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Magazines',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: Color(0xFF364046),
        ),
      ),
      supportedLocales: appSupportedLocales,
      home: HomePage(),
    );
  }
}

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
            GestureDetector(
              
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => Placeholder(), 
                  ),
                );
              },
              child: mainSectionArticle(articles: mainSectionArticles),
            ),

            TabBar(
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
                  TabCard(articles: nutrition),
                  TabCard(articles: healthy),
                  TabCard(articles: beauty),
                  TabCard(articles: fitness),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//umsplash
