import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({required this.child, Key? key}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ProjectColors.backGroundCardColor,
      padding:
          EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h, bottom: 19.h),
      child: child,
    );
  }
}
