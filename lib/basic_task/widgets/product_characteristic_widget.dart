import 'package:basic_ui_impl_first_task/assets/res/project_icons.dart';
import 'package:basic_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:basic_ui_impl_first_task/assets/test_styles/project_styles.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/characteristic_card_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/detailed_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCharacteristicWidget extends StatelessWidget {
  const ProductCharacteristicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductCardWidget(
      child: Padding(
        padding: EdgeInsets.only(bottom: 11.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h,),
            Text(
              ProjectStrings.characterization,
              style: ProjectStyles.boldBlack.copyWith(fontSize: 18.sp),
            ),
            SizedBox(height: 11.h,),
            Text(
              ProjectStrings.aboutObject,
              style: ProjectStyles.regularGrey.copyWith(fontSize: 12.sp),
            ),
            const CharacteristicCardWidget(
                svgPath: ProjectIcons.iFloor,
                title: ProjectStrings.Layout,
                info: ProjectStrings.Adjacent),
            const CharacteristicCardWidget(
                svgPath: ProjectIcons.iRoof,
                title: ProjectStrings.Ceiling,
                info: ProjectStrings.from2),
            const CharacteristicCardWidget(
                svgPath: ProjectIcons.iRepair,
                title: ProjectStrings.Repair,
                info: ProjectStrings.withoutRepair),
            SizedBox(height: 7.h,),
            const DetailedWidget(),
          ],
        ),
      ),
    );
  }
}
