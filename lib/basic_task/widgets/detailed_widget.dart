import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:basic_ui_impl_first_task/assets/res/project_icons.dart';
import 'package:basic_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:basic_ui_impl_first_task/assets/text_styles/project_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

/// виджет подробнее без отклика
class DetailedWidget extends StatelessWidget {
  const DetailedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SvgIcon(
          icon: SvgIconData(ProjectIcons.iDown),
          color: ProjectColors.iconColor,
        ),
        SizedBox(
          width: 5.5.w,
        ),
        Text(
          ProjectStrings.detailed,
          style: ProjectStyles.regularBlueOpenSans.copyWith(fontSize: 12.sp),
        ),
      ],
    );
  }
}
