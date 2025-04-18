import 'package:flutter/material.dart';

class ListviewSquare extends StatelessWidget {
  const ListviewSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Color(0xFFfccd0a),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.Hzk9_--egkrLKJ7ksIU72gHaEI?rs=1&pid=ImgDetMain',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

         
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Expanded(
                    child: Text(
                      "ما الذاكرة العضلية  .. وكيف تريدهاأشهر تمارين الإسترخاء , تساعد على بناء العضلات وتعزيز الراحة النفسية والجسدية يمكنك ممارستها في المنزل",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Somer',
                        fontSize: 15,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.share, color: Colors.white, size: 20),
                      SizedBox(width: 10),
                      Icon(Icons.remove_red_eye, color: Colors.white, size: 20),
                      SizedBox(width: 10),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
