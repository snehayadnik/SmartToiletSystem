import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage1 extends StatefulWidget {
  const DashboardPage1({Key? key}) : super(key: key);

  @override
  State<DashboardPage1> createState() => DashboardPage1State();
}

class DashboardPage1State extends State<DashboardPage1> {

  List<Toilets> _toilets = [
     Toilets(4.8, 'Kalyani Nagar', 'dashboard_page2'),
     Toilets(4.0, 'Koregaon Park', 'dashboard_page2'),
     Toilets(3.7, 'Viman Nagar', 'dashboard_page2'),
     Toilets(4.1, 'Wadgaonsheri', 'dashboard_page2'),
  ];
  var global_w;
  var global_h;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    global_w = w;
    global_h = h;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 280),
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: IconButton(
                    iconSize: 45,
                    splashRadius: 30,
                    icon: Image.asset('assets/images/icons/setting.png'),
                    onPressed: () {
                      Navigator.pushNamed(context, 'settings_page');
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 0, top: 15, right: 60),
                child: SizedBox(
                  child: Text(
                    "Hey Atharv!",
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

              Wrap(
                direction: Axis.vertical,
                // spacing: -8,
                // runSpacing: 17,
                children: toilets_widget.toList(),
              ),



            ],
          ),
        ),
      ),
    );
  }


  Iterable<Widget> get toilets_widget sync* {
    for (Toilets toilets_iterables in _toilets) {
      yield Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
            children: [
              SizedBox(
                width: 310,
                height: 130,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(176, 255, 77, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 33,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(27, 28, 30, 0.21),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset('assets/images/icons/man.png'),
                                  ),
                                  Container(
                                    height: 25,
                                    width: 3,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset('assets/images/icons/woman.png'),
                                  ),
                                ],
                              ),
                            ),


                            SizedBox(
                              width: 150,
                            ),


                            Container(
                              width: 60,
                              height: 33,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(27, 28, 30, 0.21),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset('assets/images/icons/star.png'),
                                  ),
                                  Text(
                                    toilets_iterables.rating.toString(),
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),


                      Padding(
                        padding:  EdgeInsets.only(right: 65, top: 20),
                        child: Text(
                          toilets_iterables.locality,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),



                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, toilets_iterables.dashboard_address);
                  },
                ),
              ),

            ],
          ),
      );
    }
  }
}


class Toilets {
   Toilets(this.rating, this.locality, this.dashboard_address);

  final double rating;
  final String locality;
  final String dashboard_address;
}

