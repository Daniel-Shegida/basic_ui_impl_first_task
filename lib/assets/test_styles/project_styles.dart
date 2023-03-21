import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:flutter/material.dart';

abstract class ProjectStyles {
  static const TextStyle boldBlack = TextStyle(
      fontWeight: FontWeight.bold,
      color: ProjectColors.textColorPrimary

  );

  static const TextStyle regularBlack = TextStyle(
      color: ProjectColors.textColorPrimary

  );

  static const TextStyle regularGrey = TextStyle(
      color: ProjectColors.textColorSecondary

  );

  static const TextStyle regularBlue = TextStyle(
      color: ProjectColors.iconColor
  );
}