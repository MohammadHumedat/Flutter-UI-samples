import 'package:flutter/material.dart';
import 'package:hotel_application/subscription/bottom_nav_bar.dart';
import 'package:hotel_application/subscription/category.dart';
import 'package:hotel_application/subscription/main_delivery.dart';

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
                  Category(category: 'All', color: Colors.orange),
                  Category(category: 'Pending', color: Colors.white),
                  Category(category: 'Completed', color: Colors.white),
                  Category(category: 'Cancelled', color: Colors.white),
                  Category(category: 'In Progress', color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 10),
            MainDelivery(
              status: 'In Delivery',
              statusColor: Colors.orange,
              background: Color.fromARGB(255, 33, 33, 33),
              darkText: false,
            ),
            MainDelivery(
              status: 'Completed',
              statusColor: Colors.green,
              background: Colors.white,
              darkText: true,
            ),
            MainDelivery(
              status: 'Completed',
              statusColor: Colors.green,
              background: Colors.white,
              darkText: true,
            ),
            BottomNavBar(selectedIndex: 0, onItemTapped: (index) {}),
          ],
        ),
      ),
    );
  }
}
