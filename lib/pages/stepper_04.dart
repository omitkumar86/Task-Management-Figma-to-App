import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/login_page.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:class_23/pages/stepper_05.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepper04 extends StatelessWidget {
  final GlobalKey<FormState> _fromkey = GlobalKey();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    "images/slider7.svg",
                  ),
                ],
              ),
            ),
            Center(
                child: Text(
              "Enter Your Code Team",
              style: myStyle(16, quarternaryLabelColor, FontWeight.w700),
            )),
            SizedBox(
              height: 16,
            ),
            Text(
              "Code Team",
              style: myStyle(16, secondaryLabelColor, FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CustomTextField(
                controller: passwordController,
                inputType: TextInputType.text,
                hintText: "e.g JXHJKH",
                image: "images/pass.svg",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Password';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 185,
            ),
            CustomButton(
              title: "Continue",
              isBlue: true,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Stepper05()));
              },
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
