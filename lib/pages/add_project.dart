import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/login_page.dart';
import 'package:class_23/pages/onboarding_01.dart';
import 'package:class_23/pages/team_member.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddProject extends StatelessWidget {
  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 570,
      decoration: BoxDecoration(
        color: secondaryMediumGray,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add New Project",
                    style: myStyle(16, quarternaryLabelColor, FontWeight.w700),
                  ),
                  SvgPicture.asset(
                    "images/cross.svg",
                    color: secondaryLabelColor,
                    height: 9.41,
                    width: 9.41,
                  ),
                ],
              ),
            ),
            Text(
              "Project Name",
              style: myStyle(14, quarternaryLabelColor, FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: CustomTextField(
                controller: userNameController,
                inputType: TextInputType.text,
                hintText: "Enter Project Name",
                image: "images/project1.svg",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Project Name';
                  }
                  return null;
                },
              ),
            ),
            Text(
              "Assigned to",
              style: myStyle(14, quarternaryLabelColor, FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: CustomTextField(
                controller: userNameController,
                inputType: TextInputType.text,
                hintText: "Select Your Team",
                image: "images/user2.svg",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Select Your Team Name';
                  }
                  return null;
                },
              ),
            ),
            Text(
              "Progress",
              style: myStyle(14, quarternaryLabelColor, FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: CustomTextField(
                controller: userNameController,
                inputType: TextInputType.text,
                hintText: "Ongoing",
                image: "images/outline.svg",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter a progress';
                  }
                  return null;
                },
              ),
            ),
            Text(
              "Timeline",
              style: myStyle(14, quarternaryLabelColor, FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: CustomTextField(
                controller: userNameController,
                inputType: TextInputType.text,
                hintText: "2 March 2021",
                image: "images/calender.svg",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter date';
                  }
                  return null;
                },
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "images/link.svg",
                  color: secondaryLabelColor,
                  height: 20.72,
                  width: 20.72,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Attched Files",
                  style: myStyle(16, quarternaryLabelColor, FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            CustomButton(
              title: "Save",
              isBlue: true,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TeamMember()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
