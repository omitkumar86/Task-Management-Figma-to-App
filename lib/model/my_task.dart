import 'package:class_23/const/color.dart';
import 'package:flutter/animation.dart';

class MyTask {
  Color bgColor;
  Color textColor;
  String title;

  MyTask(this.bgColor, this.textColor, this.title);

  static List<MyTask> generatedMyTask() {
    return [
      MyTask(secondaryLightPink, primaryPink, "Urgent"),
      MyTask(secondaryLightYellow, primaryYellow, "In Review"),
      MyTask(secondaryLightBlue, primaryBlue, "In Progress"),
      MyTask(secondaryLightTosca, primaryTosca, "Approve"),
      MyTask(secondaryLightPink, primaryPink, "Urgent"),
      MyTask(secondaryLightYellow, primaryYellow, "In Review"),
      MyTask(secondaryLightBlue, primaryBlue, "In Progress"),
      MyTask(secondaryLightTosca, primaryTosca, "Approve"),
    ];
  }
}
