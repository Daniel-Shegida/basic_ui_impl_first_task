import 'package:basic_ui_impl_first_task/assets/res/project_icons.dart';
import 'package:basic_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:basic_ui_impl_first_task/assets/text_styles/project_styles.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/characteristic_card_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/detailed_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCharacteristicWidget extends StatelessWidget {
  const ProductCharacteristicWidget({
    required this.floorInfo,
    required this.roofInfo,
    required this.repairInfo,
    Key? key,
  }) : super(key: key);

  final String floorInfo;
  final String roofInfo;
  final String repairInfo;

  @override
  Widget build(BuildContext context) {
    return ProductCardWidget(
      child: Padding(
        padding: EdgeInsets.only(bottom: 11.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Text(
              ProjectStrings.characterization,
              style: ProjectStyles.boldBlackOpenSans.copyWith(fontSize: 18.sp),
            ),
            SizedBox(
              height: 11.h,
            ),
            Text(
              ProjectStrings.aboutObject,
              style:
                  ProjectStyles.regularGreyOpenSans.copyWith(fontSize: 12.sp),
            ),
            CharacteristicCardWidget(
              svgPath: ProjectIcons.iFloor,
              title: ProjectStrings.Floor,
              info: floorInfo,
            ),
            CharacteristicCardWidget(
                svgPath: ProjectIcons.iRoof,
                title: ProjectStrings.Roof,
                info: roofInfo),
            CharacteristicCardWidget(
                svgPath: ProjectIcons.iRepair,
                title: ProjectStrings.Repair,
                info: repairInfo),
            SizedBox(
              height: 7.h,
            ),
            const DetailedWidget(),
          ],
        ),
      ),
    );
  }
}
