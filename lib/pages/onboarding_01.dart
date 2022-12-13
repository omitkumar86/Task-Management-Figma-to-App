import 'dart:math';

import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/onboarding_02.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding01 extends StatelessWidget {
  const OnBoarding01({super.key});

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
                        "Update Progress Your Work for The Team",
                        style: myStyle(36, primaryFillColor),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      SvgPicture.asset(
                        "images/slider1.svg",
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
                              builder: (context) => OnBoarding02()));
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

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.title, this.onTap, this.isBlue});

  VoidCallback? onTap;
  String? title;
  bool? isBlue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: isBlue == true ? Colors.transparent : baseColorWhite,
          ),
          borderRadius: BorderRadius.circular(30),
          color: isBlue == true ? primaryBlue : Colors.transparent,
        ),
        child: Text(
          "$title",
          style: myStyle(17, baseColorWhite, FontWeight.w600),
        ),
      ),
    );
  }
}
