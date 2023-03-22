import 'package:flutter/material.dart';

abstract class ProjectColors {
  static const Color textColorPrimary = _oxBlack;
  static const Color textColorSecondary = _oxGreyTr;
  static const Color textColorWhite = _oxWhite;
  static const Color sellingColor = _oxYellow;
  static const Color iconColor = _oxBlue;
  static const Color dividerColor = _oxGrey;
  static const Color indicatorColor = _oxBlackTr;
  static const Color backGroundColor = _oxLightGrey;
  static const Color backGroundCardColor = _oxWhite;

  static const Color _oxLightGrey = Color.fromRGBO(250, 250, 250, 1);
  static const Color _oxBlue = Color(0xFF007AFF);
  static const Color _oxWhite = Color(0xFFFFFFFF);
  static const Color _oxBlack = Color(0xFF000000);
  static const Color _oxYellow = Color(0xFFF9E000);
  static const Color _oxGreyTr = Color.fromRGBO(60, 60, 67, 0.6);
  static const Color _oxGrey = Color.fromRGBO(198, 198, 200, 1);
  static const Color _oxBlackTr = Color.fromRGBO(0, 0, 0, 0.6);
}
