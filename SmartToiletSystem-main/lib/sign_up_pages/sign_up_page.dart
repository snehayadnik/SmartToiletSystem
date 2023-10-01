import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    phoneNoController.dispose();
    emailController.dispose();
    genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                          "Sign Up",
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
                      padding: const EdgeInsets.only(left: 34, top: 20, right: 34),
                      child: Wrap(
                        children: [
                          Text(
                            "Fill in your information to Sign Up",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),


                    // Text Field for Name
                    SizedBox(
                      width: w,
                      height: 35,
                    ),
                    Container(
                      width: 300.0,
                      height: 60.0,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(27, 28, 30, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: TextField(
                          controller: nameController,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          cursorHeight: 20,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 14),
                            border: InputBorder.none,
                            hintText: "Enter Name",
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),


                    //Text Field for Phone Number
                    SizedBox(
                      width: w,
                      height: 25,
                    ),
                    Container(
                      width: 300.0,
                      height: 60.0,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(27, 28, 30, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: TextField(
                          controller: phoneNoController,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          cursorHeight: 20,
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 14),
                            counterText: "",
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




                    // Text Field for Email
                    SizedBox(
                      width: w,
                      height: 25,
                    ),
                    Container(
                      width: 300.0,
                      height: 60.0,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(27, 28, 30, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: TextField(
                          controller: emailController,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          cursorHeight: 20,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 14),
                            border: InputBorder.none,
                            hintText: "Enter Email",
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),




                    // Dropdown for Gender
                    SizedBox(
                      width: w,
                      height: 25,
                    ),
                    Container(
                      width: 300.0,
                      height: 60.0,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(27, 28, 30, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: TextField(
                          controller: genderController,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          cursorHeight: 20,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 14),
                            border: InputBorder.none,
                            hintText: "Enter Gender",
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
                      height: 35,
                    ),


                    Text(
                      "By continuing, you agree to the",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color.fromRGBO(87, 90, 95, 1),
                      ),
                    ),

                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'terms_of_service_page');

                      },
                      child: Text(
                        "Terms of Service",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
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
                          if(nameController.text.isEmpty)
                            {
                              print("Name is Empty");
                            }
                          else if(phoneNoController.text.isEmpty)
                          {
                            print("Phone Number is Empty");
                          }
                          else if(emailController.text.isEmpty)
                          {
                            print("Email is Empty");
                          }
                          else if(genderController.text.isEmpty)
                          {
                            print("Gender is Empty");
                          }
                          else
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
      ),
    );
  }
}
