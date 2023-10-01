import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => SupportPageState();
}

class SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: w,
              height: 45,
              child: Padding(
                padding: const EdgeInsets.only(left: 0, top: 10, right: 300),
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: IconButton(
                    iconSize: 45,
                    splashRadius: 30,
                    icon: Image.asset('assets/images/icons/arrow2.png'),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Text(
              "You've heard",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: const Color.fromRGBO(176, 255, 77, 1),
              ),
            ),
            Text(
              "about us",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Colors.white,
              ),
            ),



            SizedBox(
              width: w,
              height: 40,
            ),



            Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/team_images/sneha.png'),
                ),
                Text(
                  "Sneha Yadnik",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "9390578687",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: const Color.fromRGBO(176, 255, 77, 1),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),


            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/team_images/varun.png'),
                    ),
                    Text(
                      "Varun Poojary",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "9545550710",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(176, 255, 77, 1),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  width: 40,
                ),



                Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/team_images/utkarsh.png'),
                    ),
                    Text(
                      "Utkarsh kokate",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "8208749084",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(176, 255, 77, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),





            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/team_images/atharv.png'),
                    ),
                    Text(
                      "Atharv Patil",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "7020795464",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(176, 255, 77, 1),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  width: 60,
                ),



                Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/team_images/rahul.png'),
                    ),
                    Text(
                      "Rahul Bhosle",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "8408048952",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(176, 255, 77, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
