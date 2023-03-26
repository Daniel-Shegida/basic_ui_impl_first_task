import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:flutter/material.dart';

/// все текстовые стили проекта без учета размеров
abstract class ProjectStyles {

  static const TextStyle boldBlackOpenSans = TextStyle(
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.bold,
      color: ProjectColors.textColorPrimary,
  );

  static const TextStyle boldBlack = TextStyle(
      fontWeight: FontWeight.bold, color: ProjectColors.textColorPrimary);

  static const TextStyle regularBlackOpenSans =
      TextStyle(fontFamily: 'OpenSans', color: ProjectColors.textColorPrimary);

  static const TextStyle regularGreyOpenSans = TextStyle(
      fontFamily: 'OpenSans', color: ProjectColors.textColorSecondary);

  static const TextStyle regularBlueOpenSans =
      TextStyle(fontFamily: 'OpenSans', color: ProjectColors.iconColor);

  static const TextStyle regularWhiteOpenSans =
      TextStyle(fontFamily: 'OpenSans', color: ProjectColors.textColorWhite);
}
