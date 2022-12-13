import 'package:class_23/const/color.dart';
import 'package:class_23/const/style.dart';
import 'package:class_23/pages/add_project.dart';
import 'package:class_23/pages/home_page.dart';
import 'package:class_23/screen/calender.dart';
import 'package:class_23/screen/profile.dart';
import 'package:class_23/screen/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({Key? key}) : super(key: key);

  @override
  _BottomNavBarDemoState createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int selectedItem = 2;

  PageController pageController = PageController(initialPage: 0);

  List<Widget> pages = [HomePage(), Calender(), Project(), Profile()];

  void onPageChange(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  addProject() {
    return showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => AddProject());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        backgroundColor: primaryBlue,
        child: Icon(
          Icons.add,
          size: 18,
          color: Colors.white,
        ),
        onPressed: () {
          // pageController.jumpToPage(2);
          addProject();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChange,
      ),
      bottomNavigationBar: BottomAppBar(
        color: secondaryMediumGray,
        child: Padding(
          padding: EdgeInsets.only(bottom: 8, top: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 0;
                    pageController.jumpToPage(0);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "images/my_task.svg",
                      height: 18,
                      width: 20,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "My Task",
                      style:
                          myStyle(12, quarternaryLabelColor, FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 1;
                    pageController.jumpToPage(1);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "images/calender.svg",
                      height: 18,
                      width: 20,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Calender",
                      style:
                          myStyle(12, quarternaryLabelColor, FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 22,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 2;
                    pageController.jumpToPage(2);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "images/project.svg",
                      height: 18,
                      width: 20,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Project",
                      style:
                          myStyle(12, quarternaryLabelColor, FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 3;
                    pageController.jumpToPage(3);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "images/user.svg",
                      height: 18,
                      width: 20,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Profile",
                      style:
                          myStyle(12, quarternaryLabelColor, FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
