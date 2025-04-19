import 'package:flutter/material.dart';

class GrideItem extends StatelessWidget {
  const GrideItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        color: Colors.white,
        height: 320,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: 180,
                    width: 300,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.Hzk9_--egkrLKJ7ksIU72gHaEI?rs=1&pid=ImgDetMain',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_border, color: Colors.white),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'تمارين الكارديو من أهم التمارين الرياضية التي تساعدك على الحصول على أكبر كمية من  الطاقة والحماس والتشويق',
                style: TextStyle(
                  fontFamily: 'Somar',
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 2,
                // textAlign: TextAlign.end,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
