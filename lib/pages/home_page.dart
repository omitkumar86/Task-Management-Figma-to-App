import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/model/my_task.dart';
import 'package:class_23/model/project_task.dart';
import 'package:class_23/screen/calender.dart';
import 'package:class_23/screen/profile.dart';
import 'package:class_23/screen/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final projectTask_List = ProjectTask.generatedProjectTask();

  final myTask_List = MyTask.generatedMyTask();

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  int selectedItem = 2;

  PageController pageController = PageController(initialPage: 0);

  List<Widget> pages = [HomePage(), Calender(), Project(), Profile()];

  // void onPageChange(int index) {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 18, right: 18, bottom: 14),
              height: 60,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: systemGrey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 10.2),
                    child: Text(
                      "Pranto Team",
                      style: myStyle(16, primaryFillColor, FontWeight.w700),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "images/search.svg",
                    height: 19.76,
                    width: 19.76,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18, bottom: 16),
              child: Text(
                "Project Task",
                style: myStyle(16, primaryFillColor, FontWeight.w700),
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 18),
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: projectTask_List.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 12),
                      width: 130,
                      decoration: BoxDecoration(
                        color: secondaryMediumGray,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 12),
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: projectTask_List[index].bgColor,
                            ),
                            height: double.infinity,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  projectTask_List[index].number,
                                  style: myStyle(
                                      20, primaryFillColor, FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  projectTask_List[index].title,
                                  style: myStyle(
                                      12, secondaryFillColor, FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 32, bottom: 16, left: 18, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Task",
                    style: myStyle(16, quarternaryLabelColor, FontWeight.w700),
                  ),
                  Text(
                    "See More",
                    style: myStyle(16, secondaryFillColor, FontWeight.w700),
                  ),
                ],
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: myTask_List.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 18, right: 18, bottom: 8),
                    padding: EdgeInsets.all(12),
                    height: 110,
                    decoration: BoxDecoration(
                      color: secondaryMediumGray,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outlined,
                              color: secondaryFillColor,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Research Analysis",
                              style: myStyle(
                                  16, quarternaryLabelColor, FontWeight.w400),
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.center,
                              height: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: myTask_List[index].bgColor,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Text(
                                "${myTask_List[index].title}",
                                style: myStyle(12, myTask_List[index].textColor,
                                    FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              flex: 10,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 8,
                                    width: 238,
                                    decoration: BoxDecoration(
                                      color: Color(0xff363748),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Container(
                                        height: 8,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: primaryPink,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "5/20",
                              style: myStyle(
                                  12, secondaryFillColor, FontWeight.w400),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: primaryTosca,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "2 Days Left",
                              style: myStyle(
                                  12, secondaryFillColor, FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      )),
      // bottomNavigationBar: BottomAppBar(
      //   color: Color(0xff292B3E),
      //   child: Padding(
      //     padding: EdgeInsets.only(bottom: 8, top: 8),
      //     child: Row(
      //       mainAxisSize: MainAxisSize.min,
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         MaterialButton(
      //           onPressed: () {
      //             setState(() {
      //               selectedItem = 0;
      //               pageController!.jumpToPage(0);
      //             });
      //           },
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               SvgPicture.asset(
      //                 "assets/mytask.svg",
      //               ),
      //               SizedBox(
      //                 height: 3,
      //               ),
      //               Text(
      //                 "MyTask",
      //                 style: myStyle(  14,Colors.white70),
      //               )
      //             ],
      //           ),
      //         ),
      //         MaterialButton(
      //           onPressed: () {
      //             setState(() {
      //               selectedItem = 1;
      //               pageController!.jumpToPage(1);
      //             });
      //           },
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               SvgPicture.asset(
      //                 "assets/calender.svg",
      //               ),
      //               SizedBox(
      //                 height: 3,
      //               ),
      //               Text(
      //                 "Calender",
      //                 style: myStyle(  14,Colors.white70),
      //               )
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           width: 22,
      //         ),
      //         MaterialButton(
      //           onPressed: () {
      //             setState(() {
      //               selectedItem = 2;
      //               pageController!.jumpToPage(2);
      //             });
      //           },
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               SvgPicture.asset(
      //                 "assets/project.svg",
      //               ),
      //               SizedBox(
      //                 height: 3,
      //               ),
      //               Text(
      //                 "Project",
      //                 style: myStyle(  14,Colors.white70),
      //               )
      //             ],
      //           ),
      //         ),
      //         MaterialButton(
      //           onPressed: () {
      //             setState(() {
      //               selectedItem = 3;
      //               pageController!.jumpToPage(3);
      //             });
      //           },
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               SvgPicture.asset(
      //                 "assets/profile.svg",
      //               ),
      //               SizedBox(
      //                 height: 3,
      //               ),
      //               Text(
      //                 "Profile",
      //                 style: myStyle( 14,Colors.white70),
      //               )
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
