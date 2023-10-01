import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarttoiletsystem/Services/local_notification.dart';

class TermsofServicePage extends StatefulWidget {
  const TermsofServicePage({Key? key}) : super(key: key);

  @override
  State<TermsofServicePage> createState() => TermsofServicePageState();
}

class TermsofServicePageState extends State<TermsofServicePage> {
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
                        "Terms of Service",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 35,
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
                    height: 30,
                  ),

                  SizedBox(
                    width: w,
                    height: h * 0.70,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 34, right: 34),
                        child: Column(
                          children: [
                            Text("We are, a company registered in India at MIT ADT University, Loni Kalbhor, Pune, Maharashtra 412201. \n \nWe operate the mobile application Smart Toilet System, as well as any other related products and services that refer or link to these legal terms.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.white,
                              ),),

                            Text("You can contact us by email at varunnpoojary@gmail.com or by mail to MIT ADT University, Loni Kalbhor,Pune,Maharashtra 411014, India. \n\nThese Legal Terms constitute a legally binding agreement made between you, whether personally or on behalf of an entity, and concerning your access to and use of the Services.\n\nYou agree that by accessing the Services, you have read, understood, and agreed to be bound by all of these Legal Terms. \n\nIF YOU DO NOT AGREE WITH ALL OF THESE LEGAL TERMS, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SERVICES AND YOU MUST DISCONTINUE USE IMMEDIATELY. \n\nSupplemental terms and conditions or documents that may be posted on the Services from time to time are hereby expressly incorporated herein by reference. We reserve the right, in our sole discretion, to make changes or modifications to these Legal Terms at any time and for any reason. We will alert you about any changes by updating the date of these Legal Terms, and you waive any right to receive specific notice of each such change. \n\nIt is your responsibility to periodically review these Legal Terms to stay informed of updates. You will be subject to, and will be deemed to have been made aware of and to have accepted, the changes in any revised Legal Terms by your continued use of the Services after the date such revised Legal Terms are posted",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.white,
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 34, top: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 130,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff575A5F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: Text(
                              "Decline",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color.fromRGBO(176, 255, 77, 1),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'sign_up_page');
                            },
                          ),
                        ),

                        SizedBox(
                          width: 25,
                        ),


                        SizedBox(
                          width: 130,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(176, 255, 77, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: Text(
                              "Accept",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color(0xff575A5F),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'otp_verification_page');
                            },
                          ),
                        ),
                      ],
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
