import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarttoiletsystem/introduction_pages/intro_page_1.dart';
import 'package:smarttoiletsystem/introduction_pages/intro_page_2.dart';
import 'package:smarttoiletsystem/introduction_pages/intro_page_3.dart';

class MainIntroPage extends StatefulWidget {
  const MainIntroPage({Key? key}) : super(key: key);

  @override
  State<MainIntroPage> createState() => MainIntroPageState();
}

class MainIntroPageState extends State<MainIntroPage> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        children: [
          IntroPage1(),
          IntroPage2(),
          IntroPage3(),
        ],
      )
    );
  }
}
