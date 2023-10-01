import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => IntroPage1State();
}

class IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.55,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(16, 16, 18, 0.72),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34, top: 15),
                    child: SizedBox(
                      width: w,
                      child: Text(
                        "Hygienic",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 265, top: 10),
                    child: Container(
                      width: 25,
                      height: 5,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34, top: 20),
                    child: Wrap(
                      children: [
                        Text(
                          "Our app elevates hygiene to a new level of sophistication.",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: w,
              height: h * 0.4,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: w,
                    height: 150,
                  ),
                  SizedBox(
                    width: 290,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(176, 255, 77, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'sign_up_page');

                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'sign_in_page');

                      },
                      child: Text(
                        "I'm already a user",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
