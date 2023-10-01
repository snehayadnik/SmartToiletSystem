import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarttoiletsystem/line_chart_widget.dart';
import 'package:smarttoiletsystem/dashboard_pages/dashboard_page_1.dart';

import '../Services/local_notification.dart';

class DashboardPage2 extends StatefulWidget {
  const DashboardPage2({Key? key}) : super(key: key);

  @override
  State<DashboardPage2> createState() => DashboardPage2State();
}

class DashboardPage2State extends State<DashboardPage2> {


  bool powerOn = false;
  late List<Toilet> _toilets;
  var choice = 'Kalyani Nagar';
  var ammonia = 26;
  var waterLevel = "Empty";
  var waterLevelCount = 0;

  NotificationService notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
    _toilets = <Toilet>[
      const Toilet('Kalyani Nagar'),
      const Toilet('Koregaon Park'),
      const Toilet('Viman Nagar'),
      const Toilet('Wanorie'),
    ];
    super.initState();
    notificationService.initialiseNotification();
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
                      onPressed: () {
                        Navigator.pushNamed(context, 'dashboard_page1');
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 20),
                  child: Text(
                    "Dashboard",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 0),
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
              ],
            ),
            SizedBox(
              width: w,
              height: 30,
            ),

            Container(
              width: 320,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff575A5F),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/images/icons/sun.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Sunny",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 2,
                      height: 40,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/images/icons/temperature.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "25°C",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: w,
              height: 15,
            ),
            //Added This
            SizedBox(
              width: w,
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: toiletWidget.toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              width: w,
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff575A5F),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 0, top: 10, right: 5),
                          child: Text(
                            "Ammonia \n(ppm)",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 0, right: 0),
                              child: Text(
                                ammonia.toString(),
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff575A5F),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 0, top: 10, right: 5),
                          child: Text(
                            "Water Level",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 30, right: 0),
                              child: Text(
                                waterLevel,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              width: w,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(176, 255, 77, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 10, left: 0, right: 20),
                  child: LineChartWidget(),
                ),
              ),
            ),

            SizedBox(
              width: w,
              height: 20,
            ),
            Container(
              width: 320,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff575A5F),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Cleaning in Process",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CupertinoSwitch(
                        value: powerOn,
                        onChanged: (value) {
                          setState(() {
                            powerOn = value;
                            if (powerOn) {
                              print("Cleaning in Process");
                            }
                          });
                        }),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Random random = new Random();
                          ammonia = random.nextInt(25)+10;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: Container(
                        height: 50,
                        width: 50,
                        // color: Colors.white,
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Random random = new Random();
                          ammonia = random.nextInt(70)+30;
                          if(ammonia >30 && ammonia<=50)
                            notificationService.sendNotification('Cleaning Alert', 'Toilet needs Moderate Cleaning and Fan Started');
                          else if(ammonia >50)
                            notificationService.sendNotification('Cleaning Alert', 'Toilet needs Urgent Cleaning');
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: Container(
                        height: 50,
                        width: 50,
                        // color: Colors.white,
                      ),
                    ),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(waterLevelCount == 0)
                            {
                              waterLevelCount = 1;
                              waterLevel = "Half";
                            }
                          else
                            {
                              waterLevelCount = 0;
                              waterLevel = "Empty";
                              notificationService.sendNotification('Water Alert', 'Tank Needs to be filled Immediately');
                            }
                        });

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: Container(
                        height: 50,
                        width: 50,
                        // color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Iterable<Widget> get toiletWidget sync* {
    for (Toilet toilet in _toilets) {
      yield Padding(
        padding: const EdgeInsets.only(left: 7),
        child: ChoiceChip(
          // visualDensity: VisualDensity(horizontal: 4),
          labelPadding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          label: Text(toilet.name),
          backgroundColor: Color.fromRGBO(176, 255, 77, 1),
          selectedColor: const Color(0xff575A5F),
          // selectedColor: Color.fromRGBO(176, 255, 77, 1),
          selected: (choice == toilet.name) ? true : false,
          labelStyle: TextStyle(
              color: (choice == toilet.name) ? Colors.white : Colors.black),
          onSelected: (bool selected) {
            setState(
              () {
                print(toilet.name);
                choice = toilet.name;
              },
            );
          },
        ),
      );
    }
  }
}

class Toilet {
  const Toilet(this.name);

  final String name;
}
