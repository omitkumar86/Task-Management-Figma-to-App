import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:class_23/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class LogInPage extends StatelessWidget {
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
                    height: 13.41,
                    width: 13.41,
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
              title: "Login",
              isBlue: true,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                "Forgot Your Password",
                style: myStyle(16, quarternaryLabelColor, FontWeight.w400),
              ),
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

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.hintText,
      required this.controller,
      this.image,
      this.inputType,
      this.validator})
      : super(key: key);

  final TextEditingController controller;
  final TextInputType? inputType;
  final String? hintText;
  final String? image;
  final dynamic validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: myStyle(16, secondaryLabelColor, FontWeight.w400),
      keyboardType: inputType,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset(
          image!,
          height: 16,
          width: 20,
          fit: BoxFit.scaleDown,
          color: secondaryLabelColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: secondaryLabelColor,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: secondaryLabelColor,
          ),
        ),
        hintText: hintText,
        hintStyle: myStyle(16, secondaryLabelColor, FontWeight.w400),
      ),
    );
  }
}
