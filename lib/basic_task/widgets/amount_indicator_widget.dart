import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:basic_ui_impl_first_task/assets/text_styles/project_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AmountIndicatorWidget extends StatelessWidget {
  const AmountIndicatorWidget(
      {required this.currentValue, required this.maxValue, Key? key})
      : super(key: key);
  final int currentValue;
  final int maxValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.r)),
          color: ProjectColors.indicatorColor),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 9.w),
        child: Text(
          '$currentValue / $maxValue',
          style: ProjectStyles.regularWhiteOpenSans.copyWith(fontSize: 9.sp),
        ),
      ),
    );
  }
}
