import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeamMember extends StatelessWidget {
  const TeamMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 16, left: 18, right: 18),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 16),
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
                    width: 112,
                  ),
                  Text(
                    "Parto Team",
                    style: myStyle(16, primaryFillColor, FontWeight.w700),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset(
                                    "images/team1.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xffE4E4E6),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shoo Phar Nho",
                                style: myStyle(
                                    16, quarternaryLabelColor, FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(
                                    12, secondaryFillColor, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset(
                                    "images/team1.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xffE4E4E6),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shoo Phar Nho",
                                style: myStyle(
                                    16, quarternaryLabelColor, FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(
                                    12, secondaryFillColor, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset(
                                    "images/team1.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xffE4E4E6),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shoo Phar Nho",
                                style: myStyle(
                                    16, quarternaryLabelColor, FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(
                                    12, secondaryFillColor, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset(
                                    "images/team2.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xffE4E4E6),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shoo Phar Nho",
                                style: myStyle(
                                    16, quarternaryLabelColor, FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(
                                    12, secondaryFillColor, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset(
                                    "images/team3.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xffE4E4E6),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shoo Phar Nho",
                                style: myStyle(
                                    16, quarternaryLabelColor, FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(
                                    12, secondaryFillColor, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset(
                                    "images/team1.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xffE4E4E6),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shoo Phar Nho",
                                style: myStyle(
                                    16, quarternaryLabelColor, FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(
                                    12, secondaryFillColor, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset(
                                    "images/team2.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xffE4E4E6),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shoo Phar Nho",
                                style: myStyle(
                                    16, quarternaryLabelColor, FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(
                                    12, secondaryFillColor, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset(
                                    "images/team1.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xffE4E4E6),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shoo Phar Nho",
                                style: myStyle(
                                    16, quarternaryLabelColor, FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(
                                    12, secondaryFillColor, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 40, right: 2),
        height: 64,
        width: 64,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: baseColorWhite,
          ),
        ),
      ),
    );
  }
}
