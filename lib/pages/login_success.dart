import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/home_page.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:class_23/screen/botton_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: systemGrey,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Congratulations!",
              style: myStyle(24, quarternaryLabelColor, FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Parto team was created successfully,",
                    style: myStyle(16, secondaryFillColor, FontWeight.w400),
                  ),
                  Text(
                    "create your latest project so you can work",
                    style: myStyle(16, secondaryFillColor, FontWeight.w400),
                  ),
                  Text(
                    "with your team.",
                    style: myStyle(16, secondaryFillColor, FontWeight.w400),
                  ),
                ],
              ),
            ),
            CustomButton(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BottomNavBarDemo()));
              },
              title: "Next",
              isBlue: true,
            ),
          ],
        ),
      ),
    );
  }
}
