import 'package:flutter/material.dart';
import 'package:hotel_application/items.dart';

class Cards extends StatelessWidget {
  final Items item;
  const Cards({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 230,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 8.0, spreadRadius: 4),
          ],
        ),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage(item.imageurl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: const Icon(
                    Icons.favorite_border,
                    color: Color(0xFF56D4C5),
                    size: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    'Grand Royal Hotel',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    '180\$',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  'Wembley, London',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.location_on, color: Color(0xFF56D4C5), size: 18),
                SizedBox(width: 8),
                Text(
                  '2 km to city',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
                ),
                SizedBox(width: 130),
                Text(
                  '/per night',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
