import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/login_page.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:class_23/pages/stepper_01.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController emailController = TextEditingController();
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "images/cross.svg",
                    color: primaryFillColor,
                  ),
                  Text(
                    "Sign Up",
                    style: myStyle(16, primaryFillColor, FontWeight.w600),
                  )
                ],
              ),
            ),
            Text(
              "Your Email Address",
              style: myStyle(16, secondaryLabelColor, FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CustomTextField(
                controller: emailController,
                inputType: TextInputType.emailAddress,
                hintText: "Enter your email address",
                image: "images/email.svg",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Email';
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(value)) {
                    return 'Please a valid Email';
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
                    .push(MaterialPageRoute(builder: (context) => Stepper01()));
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
