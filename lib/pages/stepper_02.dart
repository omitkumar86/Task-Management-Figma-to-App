import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:class_23/pages/stepper_03.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepper02 extends StatelessWidget {
  const Stepper02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 48, bottom: 16),
              height: 56,
              child: Row(
                children: [
                  SvgPicture.asset(
                    "images/back_arrow.svg",
                    color: primaryFillColor,
                    height: 17.41,
                    width: 10.12,
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  SvgPicture.asset(
                    "images/slider5.svg",
                  ),
                ],
              ),
            ),
            CustomButton(
              title: "Create Your Own Team",
              isBlue: true,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Stepper03()));
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                "Or",
                style: myStyle(16, quarternaryLabelColor, FontWeight.w700),
              ),
            ),
            CustomButton(
              title: "Join Team",
              isBlue: false,
              onTap: () {},
            ),
            Spacer(),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 40, bottom: 8),
                height: 6,
                width: 135,
                decoration: BoxDecoration(
                  color: baseColorWhite,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
