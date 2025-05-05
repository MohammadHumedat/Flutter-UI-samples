import 'package:flutter/material.dart';
import 'package:hotel_application/filter_ui/checkbox_button.dart';
import 'package:hotel_application/filter_ui/radio_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF322e59),
        body: Padding(
          padding: const EdgeInsets.only(top: 100, left: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter',
                    style: TextStyle(
                      color: Color(0xFFbab9ce),
                      fontSize: 30,
                      fontFamily: 'Roboto',
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: Color(0xFFbab9ce),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SEARCH BY KEYWORD',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFbab9ce),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF141236),
                        ),
                        child: TextField(
                          style: TextStyle(color: Color(0xFFbab9ce)),
                          cursorColor: Color(0xFFbab9ce),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFFbab9ce),
                            ),
                            hintText: 'Search jobs',
                            hintStyle: TextStyle(color: Color(0xFFbab9ce)),
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'VIEW',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFbab9ce),
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioButton(),
              SizedBox(height: 20),
              Text(
                'INCLUDE',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFbab9ce),
                  fontWeight: FontWeight.bold,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: CheckboxButton(),
              ),
              SizedBox(height: 80),
              Container(
                height: 40,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xfFffbb57),
                ),

                child: Center(
                  child: Text(
                    'Save Changes',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 40, 39, 72),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
