import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
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
              height: h * 0.95,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34, top: 15),
                    child: SizedBox(
                      width: w,
                      child: Text(
                        "Settings",
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

                  SizedBox(
                    width: w,
                    height: 60,
                  ),


                  SizedBox(
                    width: 290,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(87, 90, 95, 0.79),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5,right: 15),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/images/icons/dashboard.png'),
                            ),
                          ),

                          Text(
                            "Dashboard",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 30),
                            child: SizedBox(
                              height: 55,
                              width: 55,
                              child: Image.asset('assets/images/icons/arrow.png'),
                            ),
                          ),

                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'dashboard_page1');
                      },
                    ),
                  ),



                  SizedBox(
                    width: w,
                    height: 30,
                  ),




                  SizedBox(
                    width: 290,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(87, 90, 95, 0.79),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5,right: 15),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/images/icons/dashboard.png'),
                            ),
                          ),

                          Text(
                            "Profile",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),



                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 85),
                            child: SizedBox(
                              height: 55,
                              width: 55,
                              child: Image.asset('assets/images/icons/arrow.png'),
                            ),
                          ),

                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'profile_page');
                      },
                    ),
                  ),




                  SizedBox(
                    width: w,
                    height: 30,
                  ),




                  SizedBox(
                    width: 290,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(87, 90, 95, 0.79),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5,right: 15),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/images/icons/support.png'),
                            ),
                          ),

                          Text(
                            "Support",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),



                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 69),
                            child: SizedBox(
                              height: 55,
                              width: 55,
                              child: Image.asset('assets/images/icons/arrow.png'),
                            ),
                          ),

                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'support_page');
                      },
                    ),
                  ),




                  SizedBox(
                    width: w,
                    height: 30,
                  ),



                  SizedBox(
                    width: 290,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(87, 90, 95, 0.79),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5,right: 15),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/images/icons/about.png'),
                            ),
                          ),

                          Text(
                            "About",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),



                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 90),
                            child: SizedBox(
                              height: 55,
                              width: 55,
                              child: Image.asset('assets/images/icons/arrow.png'),
                            ),
                          ),

                        ],
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, 'signup_personalizing_page');
                      },
                    ),
                  ),



                  SizedBox(
                    width: w,
                    height: 30,
                  ),




                  SizedBox(
                    width: 290,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(87, 90, 95, 0.79),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5,right: 07),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/images/icons/documents.png'),
                            ),
                          ),

                          Text(
                            "Terms of Service",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),



                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 0),
                            child: SizedBox(
                              height: 55,
                              width: 55,
                              child: Image.asset('assets/images/icons/arrow.png'),
                            ),
                          ),

                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'terms_of_service_page');
                      },
                    ),
                  ),



                  SizedBox(
                    width: w,
                    height: 100,
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
                      child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(bottom: 0,right: 10, left: 70),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/images/icons/logout.png'),
                            ),
                          ),

                          Text(
                            "Logout",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'main_intro_page');
                      },
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
