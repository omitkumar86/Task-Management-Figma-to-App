import 'dart:math';

import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/login_page.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoarding03 extends StatelessWidget {
  const OnBoarding03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -150,
            right: -40,
            child: Transform.rotate(
              angle: pi / 6,
              child: Container(
                height: 395,
                width: 480,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: systemGrey,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Notified when you Get a New Assignment",
                        style: myStyle(36, primaryFillColor),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Image.asset(
                        "images/slider3.png",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Container(
                  child: Column(
                    children: [
                      CustomButton(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LogInPage()));
                        },
                        title: "Sign Up",
                        isBlue: true,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      CustomButton(
                        onTap: () {},
                        title: "Login",
                        isBlue: false,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 8),
                  height: 6,
                  width: 135,
                  decoration: BoxDecoration(
                    color: baseColorWhite,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
