import 'package:flutter/material.dart';

class AvocadoOilArticleScreen extends StatelessWidget {
  const AvocadoOilArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1557925922-dac32ff4429f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGF2b2NhZG98ZW58MHx8MHx8fDA%3D',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "إليك 10 فوائد صحية لزيت الأفوكادو",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "جيد للقلب",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "يحتوي زيت الأفوكادو على أحماض دهنية غير مشبعة..."
                        " له خصائص مضادة للالتهابات، مما يساعد على منع تلف جدران الشرايين.",
                        style: TextStyle(fontSize: 14, height: 1.7),
                      ),

                      SizedBox(height: 30),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "جيد للبشرة",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "يعتبر زيت الأفوكادو مصدرًا جيدًا لمضادات الأكسدة مثل بيتا كاروتين..."
                        " مما يجعل بشرتك شابة.",
                        style: TextStyle(fontSize: 14, height: 1.7),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
