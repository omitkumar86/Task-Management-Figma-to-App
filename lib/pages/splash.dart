import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 32),
                  height: 98,
                  width: 98,
                  decoration: BoxDecoration(
                    color: secondaryMediumGray,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: double.infinity,
                              width: 13.33,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: baseColorWhite, width: 3.33)),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 13.33,
                                  width: 13.33,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: baseColorWhite, width: 3.33)),
                                ),
                                Container(
                                  height: 13.33,
                                  width: 13.33,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: baseColorWhite, width: 3.33)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "RANCANG",
                  style: myStyle(36, primaryFillColor, FontWeight.w700),
                ),
                Text(
                  "Your Personal Task Manager",
                  style: myStyle(17, secondaryFillColor, FontWeight.w400),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => OnBoarding01()));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primaryBlue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Getting Started",
                      style: myStyle(17, baseColorWhite, FontWeight.w600),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: baseColorWhite,
                    )
                  ],
                ),
              ),
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
    );
  }
}
