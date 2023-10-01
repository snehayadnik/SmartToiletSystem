import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {

  final TextEditingController phoneNoController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    phoneNoController.dispose();
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
                        "Sign In",
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
                          "Enter your phone number to Sign In to your account",
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
                  Container(
                    width: 300.0,
                    height: 60.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(27, 28, 30, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: TextField(
                        // onChanged: (value) => phoneNo = value,
                        controller: phoneNoController,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        cursorHeight: 20,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 14),
                          border: InputBorder.none,
                          hintText: "Enter Phone Number",
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: w,
                    height: h * 0.48,
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
                        "Continue to Verify",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        if(phoneNoController.text == "9545550710")
                          {
                            Navigator.pushNamed(context, 'otp_verification_page');
                          }
                        else
                          {
                            print("Invalid Phone No. ");
                          }
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
