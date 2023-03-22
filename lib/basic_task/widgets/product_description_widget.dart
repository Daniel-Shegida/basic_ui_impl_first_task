import 'package:basic_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:basic_ui_impl_first_task/assets/text_styles/project_styles.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/detailed_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDescWidget extends StatelessWidget {
  const ProductDescWidget({required this.descriptionInfo, Key? key})
      : super(key: key);
  final String descriptionInfo;

  @override
  Widget build(BuildContext context) {
    return ProductCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Text(
            ProjectStrings.description,
            style: ProjectStyles.boldBlackOpenSans.copyWith(fontSize: 18.sp),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            descriptionInfo,
            style: ProjectStyles.regularBlackOpenSans.copyWith(fontSize: 12.sp),
          ),
          SizedBox(
            height: 7.h,
          ),
          const DetailedWidget(),
        ],
      ),
    );
  }
}
