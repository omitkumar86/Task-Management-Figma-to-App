import 'package:class_23/pages/home_page.dart';
import 'package:class_23/pages/login_page.dart';
import 'package:class_23/pages/login_success.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:class_23/pages/onboarding_02.dart';
import 'package:class_23/pages/sign_up_page.dart';
import 'package:class_23/pages/splash.dart';
import 'package:class_23/pages/stepper_01.dart';
import 'package:class_23/pages/stepper_02.dart';
import 'package:class_23/pages/stepper_03.dart';
import 'package:class_23/pages/stepper_04.dart';
import 'package:class_23/pages/team_member.dart';
import 'package:class_23/screen/botton_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff191A22),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
