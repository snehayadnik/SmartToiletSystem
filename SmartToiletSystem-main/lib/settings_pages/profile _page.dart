import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
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
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text(
                    "Profile",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: w,
              height: 30,
            ),
            SizedBox(
              width: w,
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    left: 100,
                    child: SizedBox(
                        width: 172,
                        height: 172,
                        child:
                        Image.asset('assets/images/team_images/atharv.png')),
                  ),
                  Positioned(
                    left: 145,
                    top: 130,
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: IconButton(
                        iconSize: 60,
                        splashRadius: 20,
                        icon: Image.asset(
                            'assets/images/icons/edit_profile_pic.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Atharv Patil",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Text(
              "7020795464",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: const Color.fromRGBO(176, 255, 77, 1),
              ),
            ),
            SizedBox(
              width: w,
              height: 20,
            ),
            SizedBox(
              width: 290,
              height: 60,
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(87, 90, 95, 0.79),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 5, right: 15, left: 10),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/images/icons/profile.png'),
                      ),
                    ),
                    Text(
                      "Atharv Patil",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 60),
                      child: SizedBox(
                        height: 55,
                        width: 55,
                        child: Image.asset('assets/images/icons/edit.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: w,
              height: 20,
            ),
            SizedBox(
              width: 290,
              height: 60,
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(87, 90, 95, 0.79),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 5, right: 15, left: 10),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/images/icons/phone.png'),
                      ),
                    ),
                    Text(
                      "7020795464",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 54),
                      child: SizedBox(
                        height: 55,
                        width: 55,
                        child: Image.asset('assets/images/icons/edit.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: w,
              height: 20,
            ),
            SizedBox(
              width: 290,
              height: 60,
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(87, 90, 95, 0.79),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 5, right: 15, left: 10),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/images/icons/mail.png'),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: 150,
                        height: 60,
                        child: Text(
                          "atharvpat03@gmail.com",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 25),
                      child: SizedBox(
                        height: 55,
                        width: 55,
                        child: Image.asset('assets/images/icons/edit.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: w,
              height: 20,
            ),
            SizedBox(
              width: 290,
              height: 60,
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(87, 90, 95, 0.79),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 5, right: 15, left: 10),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/images/icons/phone.png'),
                      ),
                    ),
                    Text(
                      "Male",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 127),
                      child: SizedBox(
                        height: 55,
                        width: 55,
                        child: Image.asset('assets/images/icons/edit.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
