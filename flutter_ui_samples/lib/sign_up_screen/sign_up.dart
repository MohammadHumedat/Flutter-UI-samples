import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 244, 244),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isClicked;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: Column(
        children: [
          SizedBox(height: 120),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 128, 171, 228),
                fontFamily: 'Roboto',
              ),
            ),
          ),
          const SizedBox(height: 50),
          inputField("e-mail"),
          const SizedBox(height: 20),
          inputField("password"),
          const SizedBox(height: 20),
          inputField("repeat password"),

          SizedBox(height: 30),
          Row(
            children: [
              Checkbox(
                activeColor: const Color.fromARGB(255, 128, 171, 228),
                value: isClicked ?? false,
                onChanged: (value) {
                  setState(() {
                    isClicked = value;
                  });
                },
              ),

              Text(
                "Remember me",
                style: GoogleFonts.poppins(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),

          SizedBox(height: 80),

          Text(
            "Sign Up with Social Accounts",
            style: GoogleFonts.poppins(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialContainer(FontAwesomeIcons.facebookF, Colors.blue),
              SizedBox(width: 33),
              socialContainer(FontAwesomeIcons.instagram, Colors.pinkAccent),
              SizedBox(width: 33),
              socialContainer(FontAwesomeIcons.twitter, Colors.blue),
            ],
          ),
          const SizedBox(height: 100),
          signUp(),
          SizedBox(height: 30),
          Text(
            "Read User License Agreement",
            style: GoogleFonts.poppins(color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Container signUp() {
    return Container(
      height: 65,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 8.0,
            spreadRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(50),
        // color: const Color.fromARGB(255, 68, 137, 228),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 136, 173, 221),
            Color.fromARGB(255, 46, 118, 212),
          ],
        ),
      ),

      child: Center(
        child: Text(
          "Sign Up",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container socialContainer(IconData icon, Color color) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 8.0,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Center(child: Icon(icon, color: color, size: 35)),
    );
  }

  Material inputField(String hint) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
        child: TextFormField(
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            // enabledBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(
            //     color: const Color.fromARGB(255, 137, 168, 223),
            //   ),
            // ),
            contentPadding: const EdgeInsets.all(10),
            hintText: hint,
            helperStyle: TextStyle(color: Colors.black26),
            border: InputBorder.none,
            labelStyle: TextStyle(color: Color.fromARGB(255, 128, 171, 228)),
          ),
        ),
      ),
    );
  }
}
