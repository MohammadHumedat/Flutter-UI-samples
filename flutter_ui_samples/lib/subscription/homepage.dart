import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 243, 243),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 245, 243, 243),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              'Shipping Record',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          actions: [
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {
                  // to do
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 11,
                      ),
                      label: Text(
                        'All',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      backgroundColor: Color(0xfff98602),
                      labelStyle: const TextStyle(fontWeight: FontWeight.w500),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(color: const Color(0xfff98602)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 11,
                      ),
                      label: Text(
                        'Complete',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      backgroundColor: Colors.white,
                      labelStyle: const TextStyle(fontWeight: FontWeight.w500),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(
                          color: const Color.fromARGB(255, 226, 225, 225),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 11,
                      ),
                      label: Text(
                        'In Delivery',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      backgroundColor: Colors.white,
                      labelStyle: const TextStyle(fontWeight: FontWeight.w500),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(
                          color: const Color.fromARGB(255, 226, 225, 225),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 11,
                      ),
                      label: Text(
                        'In Delivery',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      backgroundColor: Colors.white,
                      labelStyle: const TextStyle(fontWeight: FontWeight.w500),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(
                          color: const Color.fromARGB(255, 226, 225, 225),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
