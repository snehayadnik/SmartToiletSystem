import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerificationSuccessfulPage extends StatefulWidget {
  const OtpVerificationSuccessfulPage({Key? key}) : super(key: key);

  @override
  State<OtpVerificationSuccessfulPage> createState() =>
      OtpVerificationSuccessfulPageState();
}

class OtpVerificationSuccessfulPageState
    extends State<OtpVerificationSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 60,
              child: SizedBox(
                height: 600,
                width: 350,
                child: Image.asset('assets/images/icons/otpsuccessfull.png'),
              ),
            ),
            Positioned(
              top: 180,
              left: 55,
              child: Text(
                "Mobile Number \nVerified \nSuccessfully",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),


            Positioned(
              top: 360,
              left: 55,
              child: Text(
                "Click on Okay to proceed",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),



            Positioned(
              top: 530,
              left: 50,
              child: SizedBox(
                width: 250,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    "Okay",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'dashboard_page1');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
