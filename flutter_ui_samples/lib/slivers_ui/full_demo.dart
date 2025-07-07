import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SliverDemo());
  }
}

class SliverDemo extends StatelessWidget {
  const SliverDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          // SliverAppBar is a material design app bar that integrates with CustomScrollView
          SliverAppBar(
            title: Text(
              'S L I V E R - D E M O',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(color: Colors.pink, height: 200),
              title: Text(
                'Sliver App Bar',
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              titlePadding: EdgeInsets.all(10),
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
            ),
            expandedHeight: 250,
            centerTitle: true,
            backgroundColor: Colors.deepPurple[300],
            leading: Icon(Icons.menu, size: 30),
          ),
          // SliverList and SliverGrid are used to create scrollable lists and grids
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                leading: Icon(Icons.star, color: Colors.deepPurple[300]),
                title: Text('Item #$index'),
                subtitle: Text('This is item number $index'),
              );
            }, childCount: 20),
          ),
  // SliverGrid is used to create a grid layout
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                color: Colors.deepPurple[300],
                child: Center(
                  child: Text(
                    'Grid Item #$index',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}
