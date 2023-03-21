import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:basic_ui_impl_first_task/assets/test_styles/project_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class CharacteristicCardWidget extends StatelessWidget {
  const CharacteristicCardWidget(
      {required this.svgPath,
        required this.title,
        required this.info,
        Key? key})
      : super(key: key);
  final String svgPath;
  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 11.h),
      child: Column(children: [
        Row(
          children: [
            SvgIcon(icon: SvgIconData(svgPath)),
            SizedBox(width: 10.w,),
            Text(
              title,
              style: ProjectStyles.regularBlack.copyWith(fontSize: 15.sp),
            ),
            Expanded(child: Container()),
            Text(info,
                style: ProjectStyles.regularBlack.copyWith(fontSize: 15.sp)),
          ],
        ),
        const Divider(
          color: ProjectColors.dividerColor,
        )
      ]),
    );
  }
}