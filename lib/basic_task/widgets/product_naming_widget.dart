import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:basic_ui_impl_first_task/assets/res/project_icons.dart';
import 'package:basic_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:basic_ui_impl_first_task/assets/test_styles/project_styles.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class ProductNamingWidget extends StatelessWidget {
  const ProductNamingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h,),
          Text(
            ProjectStrings.productName,
            style: ProjectStyles.regularBlack.copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              SvgIcon(size: 14.h, icon: const SvgIconData(ProjectIcons.iGeo), color: ProjectColors.iconColor,),
              SizedBox(width: 5.75.w,),
              Text(
                ProjectStrings.place,
                style: ProjectStyles.regularBlue.copyWith(fontSize: 13.sp),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Container(
            color: ProjectColors.sellingColor,
            padding: EdgeInsets.only(
              right: 5.w,
              left: 5.w,
              top: 3.h,
              bottom: 4.h,
            ),
            child: Text(ProjectStrings.price,
                style: ProjectStyles.boldBlack.copyWith(fontSize: 16.sp)),
          ),
        ],
      ),
    );
  }
}