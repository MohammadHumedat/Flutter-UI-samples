import 'package:fitness_magazine/gride_item.dart';
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
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemCount: 4,
                itemBuilder: (context, index) {
                  return GrideItem();
                },
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
                children: [TabCard(), TabCard(), TabCard(), TabCard()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
