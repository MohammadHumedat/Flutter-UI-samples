import 'package:flutter/material.dart';
import 'package:hotel_application/accountprofile_ui/widget/skill_chip.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize:
                    MainAxisSize
                        .min, //this important to make the card not take all the space
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align content left
                children: [
                  // Header with avatar
                  Stack(
                    clipBehavior:
                        Clip.none, //this important to prevent the overflow of the circle avatar
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xFF2196F3),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 40,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1615109398623-88346a601842?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),

                  // name and role (aligned left)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Mohammad Hmedat",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Text(
                      "junior Flutter Developer",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  // Bio text (aligned left)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),

                  // Horizontally scrollable skill chips
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: SizedBox(
                      height: 36,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          skillChip("Firebase"),
                          skillChip("REST"),
                          skillChip("Database"),
                          skillChip(".Net"),
                          skillChip("Apex"),
                          skillChip("Figma"),
                        ],
                      ),
                    ),
                  ),

                  // Action buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                220,
                                212,
                                221,
                              ),
                              foregroundColor: const Color.fromARGB(
                                255,
                                135,
                                62,
                                148,
                              ),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Message"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: const Color.fromARGB(
                                255,
                                132,
                                70,
                                143,
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              side: const BorderSide(color: Colors.black12),
                            ),
                            onPressed: () {},
                            child: const Text("Follow"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
