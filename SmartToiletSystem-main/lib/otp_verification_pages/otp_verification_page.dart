import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarttoiletsystem/sign_in_pages/sign_in_page.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<OtpVerificationPage> createState() => OtpVerificationPageState();
}

class OtpVerificationPageState extends State<OtpVerificationPage> {

  final TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    otpController.dispose();
    super.dispose();
  }

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
                        "Let's Verify",
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
                    padding:
                        const EdgeInsets.only(left: 34, top: 20, right: 70),
                    child: Wrap(
                      children: [
                        Text(
                          "We've sent you an OTP",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: w,
                    height: 35,
                  ),
                  Form(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 34),
                          child: SizedBox(
                            width: 64,
                            height: 68,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff1B1C1E),
                              ),
                              child: TextField(
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 14),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ),
                        ),



                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SizedBox(
                            width: 64,
                            height: 68,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff1B1C1E),
                              ),
                              child: TextField(
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 14),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ),
                        ),




                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SizedBox(
                            width: 64,
                            height: 68,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff1B1C1E),
                              ),
                              child: TextField(
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 14),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ),
                        ),




                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SizedBox(
                            width: 64,
                            height: 68,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff1B1C1E),
                              ),
                              child: TextField(
                                controller: otpController,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 14),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: w,
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 34),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            // Navigator.pushNamed(context, 'sign_in_page');
                          },
                          child: Text(
                            "Resend OTP",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xffB0FF4D),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 45),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'sign_in_page');
                          },
                          child: Text(
                            "Change Number",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xffB0FF4D),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: w,
                    height: h * 0.43,
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
                        "Verify",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        if(otpController.text == "4")
                        Navigator.pushNamed(context, 'otp_verification_successful_page');
                        else
                          print("Invalid OTP");
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
