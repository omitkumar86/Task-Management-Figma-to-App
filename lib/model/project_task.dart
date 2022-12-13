import 'package:class_23/const/color.dart';
import 'package:flutter/animation.dart';

class ProjectTask {
  Color bgColor;
  String number;
  String title;

  ProjectTask(this.bgColor, this.number, this.title);

  static List<ProjectTask> generatedProjectTask() {
    return [
      ProjectTask(primaryPurple, "5", "Ongoing"),
      ProjectTask(primaryPink, "7", "Under Review"),
      ProjectTask(primaryTosca, "4", "Uncoming"),
      ProjectTask(primaryPurple, "5", "Ongoing"),
      ProjectTask(primaryPink, "7", "Under Review"),
      ProjectTask(primaryTosca, "4", "Uncoming"),
    ];
  }
}
