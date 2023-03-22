import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:basic_ui_impl_first_task/assets/res/project_icons.dart';
import 'package:basic_ui_impl_first_task/assets/text_styles/project_styles.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/price_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

/// виджет раздела названия продукта
class ProductNamingWidget extends StatelessWidget {
  const ProductNamingWidget({
    required this.productNameInfo,
    required this.placeInfo,
    required this.price,
    required this.priceSign,
    required this.priceColor,
    Key? key,
  }) : super(key: key);
  final String productNameInfo;
  final String placeInfo;
  final String price;
  final String priceSign;
  final Color priceColor;

  @override
  Widget build(BuildContext context) {
    return ProductCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12.h,
          ),
          Text(
            placeInfo,
            style: ProjectStyles.regularBlackOpenSans.copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              SvgIcon(
                size: 14.h,
                icon: const SvgIconData(ProjectIcons.iGeo),
                color: ProjectColors.iconColor,
              ),
              SizedBox(
                width: 5.75.w,
              ),
              Text(
                placeInfo,
                style:
                    ProjectStyles.regularBlueOpenSans.copyWith(fontSize: 13.sp),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          PriceWidget(
            price: price,
            priceSign: priceSign,
            priceColor: priceColor,
          )
        ],
      ),
    );
  }
}
