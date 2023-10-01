import 'package:firebase_core/firebase_core.dart'; //
import 'package:smarttoiletsystem/dashboard_pages/dashboard_page_2.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:smarttoiletsystem/dashboard_pages/dashboard_page_1.dart';
import 'package:smarttoiletsystem/introduction_pages/intro_page_1.dart';
import 'package:smarttoiletsystem/introduction_pages/intro_page_2.dart';
import 'package:smarttoiletsystem/introduction_pages/intro_page_3.dart';
import 'package:smarttoiletsystem/introduction_pages/main_intro_page.dart';
import 'package:smarttoiletsystem/otp_verification_pages/otp_verification_page.dart';
import 'package:smarttoiletsystem/otp_verification_pages/otp_verification_successful_page.dart';
import 'package:smarttoiletsystem/settings_pages/profile%20_page.dart';
import 'package:smarttoiletsystem/settings_pages/settings_page.dart';
import 'package:smarttoiletsystem/settings_pages/support_page.dart';
import 'package:smarttoiletsystem/sign_in_pages/sign_in_page.dart';
import 'package:smarttoiletsystem/sign_up_pages/sign_up_page.dart';
import 'package:smarttoiletsystem/settings_pages/terms_of_service_page.dart';
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main_intro_page',
      routes: {
        'main_intro_page': (context) =>  MainIntroPage(),
        'intro_page_1': (context) =>  IntroPage1(),
        'intro_page_2': (context) =>  IntroPage2(),
        'intro_page_3': (context) =>  IntroPage3(),
        'sign_in_page': (context) =>  SignInPage(),
        'sign_up_page': (context) =>  SignUpPage(),
        'otp_verification_page': (context) =>  OtpVerificationPage(),
        'otp_verification_successful_page': (context) =>  OtpVerificationSuccessfulPage(),
        'terms_of_service_page': (context) =>  TermsofServicePage(),
        'dashboard_page1': (context) =>  DashboardPage1(),
        'dashboard_page2': (context) =>  DashboardPage2(),
        'settings_page': (context) =>  SettingsPage(),
        'support_page': (context) =>  SupportPage(),
        'profile_page': (context) =>  ProfilePage(),



      },
    );
  }
}

