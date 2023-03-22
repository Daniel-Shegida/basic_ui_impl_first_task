import 'package:basic_ui_impl_first_task/assets/text_styles/project_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    required this.price,
    required this.priceSign,
    required this.priceColor,
    Key? key,
  }) : super(key: key);
  final String price;
  final String priceSign;
  final Color priceColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: priceColor,
      padding: EdgeInsets.only(
        right: 5.w,
        left: 5.w,
        top: 3.h,
        bottom: 4.h,
      ),

      /// RichText потому что в openSans нет знака рубля
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: price,
                style:
                    ProjectStyles.boldBlackOpenSans.copyWith(fontSize: 16.sp)),
            TextSpan(
                text: priceSign,
                style: ProjectStyles.boldBlack.copyWith(fontSize: 16.sp)),
          ],
        ),
      ),
    );
  }
}
