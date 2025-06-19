import 'package:flutter/material.dart';
import 'package:hotel_application/subscription/details_page.dart';

class MainDelivery extends StatelessWidget {
  final String status;
  final Color statusColor;
  final Color background;
  bool darkText = false;

  MainDelivery({super.key, 
    required this.status,
    required this.statusColor,
    required this.background,
    this.darkText = false,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PackageDetailsScreen()),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.inventory_2_outlined, color: Colors.orange),
                ),
                SizedBox(width: 10),
                Text.rich(
                  TextSpan(
                    text: "Order ID: ",
                    style: TextStyle(
                      color: darkText ? Colors.black : Colors.white,
                    ),

                    children: [
                      TextSpan(
                        text: "123456789",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  maxLines: 2,
                ),

                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(status, style: TextStyle(color: statusColor)),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              "Tracking Number: 34589762",
              style: TextStyle(color: darkText ? Colors.black : Colors.white),
            ),
            Text(
              "Date Shipped: 13 Jul. 2024",
              style: TextStyle(color: darkText ? Colors.black : Colors.white),
            ),
            Text(
              "Location: Aldo",
              style: TextStyle(color: darkText ? Colors.black : Colors.white),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: () {}, child: Text("Track")),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("View Details"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
