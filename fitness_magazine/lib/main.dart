

import 'package:fitness_magazine/listview_tabbar.dart';
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
          elevation: 0, // This removes the shadow from all App Bars.
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
            Container(
              color: Colors.white,
              height: 350,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 220,
                        width: 350,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/icons/png/placeholder.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(color: Color(0xFFfccd0a)),
                      child: Center(
                        child: Text(
                          'لياقة',
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
                      'تمارين الكارديو وحدها لا تساعد في فقدان الوزن',
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
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      'تمارين الكارديو من أهم التمارين الرياضية التي تساعدك على الحصول على أكبر كمية من  الطاقة والحماس والتشويق',
                      style: TextStyle(
                        fontFamily: 'Somer',
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),

            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.food_bank_rounded, size: 18),
                  text: 'تغذية',
                ),
                Tab(icon: Icon(Icons.health_and_safety, size: 18), text: 'صحة'),
                Tab(icon: Icon(Icons.girl_sharp, size: 18), text: 'جمال'),
                Tab(icon: Icon(Icons.fitness_center, size: 18), text: 'لياقة'),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [TabCard(), Text('صحة'), Text('Tab3'), Text('Tab4')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

