import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_application/sign_up_screen/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),

      home: Scaffold(body: Homepage()),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(flip: false),
              child: Container(
                height: 700,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 109, 161, 204),
                      const Color.fromARGB(255, 28, 177, 177),
                      const Color.fromARGB(255, 114, 178, 207),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: size.width / 2 - 65,
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              ),
            ),

            Positioned(
              left: 70,
              top: size.height / 5.5,
              child: Column(
                children: [
                  UserNameInputFeild(size),
                  SizedBox(height: 20),

                  PasswordUserInput(size),

                  Container(
                    height: 50,
                    width: size.width / 2 + 100,
                    margin: EdgeInsets.only(top: 100),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 78, 122, 199),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  const Text(
                    "Forgit your passward?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),

        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                height: 2,
                width: size.width / 2 - 100,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Or connect with",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Container(
                height: 2,
                width: size.width / 2 - 100,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 74, 160, 230),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, color: Colors.white, size: 30),
                  const SizedBox(width: 10),
                  Text(
                    "Facebook",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 62, 186, 202),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.twitter, color: Colors.white),
                  const SizedBox(width: 10),
                  Text(
                    "Twitter",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 70),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account?  ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                recognizer:
                    TapGestureRecognizer()
                      ..onTap =
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ), // GO TO SIGN UP
                          ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container PasswordUserInput(Size size) {
    return Container(
      height: 50,
      width: size.width / 2 + 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 3, right: 3),
            child: Icon(Icons.lock_outline, color: Colors.black54),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 3, top: 3),
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container UserNameInputFeild(Size size) {
    return Container(
      height: 50,
      width: size.width / 2 + 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 3, right: 3),
            child: Icon(Icons.person_outline, color: Colors.black54),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 3, top: 3),
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.check_circle, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
