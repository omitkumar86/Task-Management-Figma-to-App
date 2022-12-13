import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/login_page.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:class_23/pages/sign_up_page.dart';
import 'package:class_23/pages/stepper_02.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepper01 extends StatelessWidget {
  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController userNameController = TextEditingController();
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
                    "images/slider4.svg",
                  ),
                ],
              ),
            ),
            Center(
                child: Text(
              "Complete Your Profiles",
              style: myStyle(16, quarternaryLabelColor, FontWeight.w700),
            )),
            Center(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 16, bottom: 24),
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                  color: systemGrey,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  "images/camera.svg",
                  height: 17,
                  width: 20,
                ),
              ),
            ),
            Text(
              "Your Full Name",
              style: myStyle(16, secondaryLabelColor, FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CustomTextField(
                controller: userNameController,
                inputType: TextInputType.text,
                hintText: "Enter your full name",
                image: "images/user.svg",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Full Name';
                  }
                  return null;
                },
              ),
            ),
            Text(
              "Your Password",
              style: myStyle(16, secondaryLabelColor, FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CustomTextField(
                controller: passwordController,
                inputType: TextInputType.text,
                hintText: "Enter your password",
                image: "images/pass.svg",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Password';
                  }
                  return null;
                },
              ),
            ),
            CustomButton(
              title: "Continue",
              isBlue: true,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Stepper02()));
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
