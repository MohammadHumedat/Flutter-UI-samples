import 'package:flutter/material.dart';

class GrideItem extends StatelessWidget {
  const GrideItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            );
  }
}