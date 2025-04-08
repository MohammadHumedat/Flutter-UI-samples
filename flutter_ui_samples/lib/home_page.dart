import 'package:flutter/material.dart';
import 'package:hotel_application/cards.dart';
import 'package:hotel_application/items.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 222, 222),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.location_on),
            ),
          ],
          // actionsPadding: EdgeInsets.all(8),
          centerTitle: true,
          title: Text(
            'Explore',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white,
          elevation: 3,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: 0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),

                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text('Landon'),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 127, 223, 176),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Choose date',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text('12 Dec - 22 Dec', style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 30, child: VerticalDivider()),
                Column(
                  children: [
                    Text(
                      'Numbers of Rooms',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text('1 Room - 2 Adults', style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),

                          child: Text(
                            '530 hotels found',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Filters',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.sort_sharp,
                            color: Color(0xFF56D4C5),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: item.length,
                        itemBuilder:
                            (context, index) => Cards(item: item[index]),

                        // title: 'hello',
                        // price: 100,
                        // location: 'hi',
                      ),
                    ),
                    // Flexible(
                    //   child: ListView(
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Stack(
                    //           children: [
                    //             Container(
                    //               height: 150,
                    //               width: 330,

                    //               decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(20),
                    //                 color: Colors.grey,
                    //                  boxShadow: [
                    //             BoxShadow(
                    //               color: Colors.grey,
                    //               blurRadius: 8.0,
                    //             ),
                    //           ],
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   height: 384,
                    //   color: Colors.white,
                    //   child: Stack(
                    //     children: [
                    //       Container(
                    //         height: 130,
                    //         width: 330,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(20),
                    //           boxShadow: [
                    //             BoxShadow(
                    //               color: Colors.grey,
                    //               blurRadius: 8.0,
                    //               spreadRadius: 4,
                    //             ),
                    //           ],
                    //           image: DecorationImage(
                    //             image: NetworkImage(
                    //               'https://previews.123rf.com/images/rawpixel/rawpixel1902/rawpixel190205277/117530048-beautiful-himalayas-mountains-in-pakistan.jpg',
                    //             ),
                    //             fit: BoxFit.cover,
                    //           ),
                    //         ),
                    //       ),
                    //        Positioned(child: Icon(Icons.favorite_border,color: Color(0xFF56D4C5),size: 20,),top: 10,right: 10,)
                    //     ],
                    //   ),
                    // ),
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
