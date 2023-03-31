import 'package:basic_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:basic_ui_impl_first_task/assets/res/project_icons.dart';
import 'package:basic_ui_impl_first_task/assets/res/project_pictures.dart';
import 'package:basic_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:basic_ui_impl_first_task/assets/text_styles/project_styles.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/avito_card_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/image_carousel_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_characteristic_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_description_widget.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_naming_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

/// основной экран проекта
class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: ProjectColors.backGroundColor,
        appBar: _WhiteAppBarWithActions(),
        body: _BodyContentScrollColumn(),
      ),
    );
  }
}

class _WhiteAppBarWithActions extends StatelessWidget with PreferredSizeWidget{
  const _WhiteAppBarWithActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        ProjectStrings.title,
        style: ProjectStyles.boldBlackOpenSans.copyWith(fontSize: 17.sp),
      ),
      backgroundColor: ProjectColors.backGroundCardColor,
      elevation: 0,
      actions: [
        const SvgIcon(
          icon: SvgIconData(
            ProjectIcons.iUpload,
          ),
          color: ProjectColors.iconColor,
        ),
        SizedBox(
          width: 16.9.w,
        ),
        const SvgIcon(
          icon: SvgIconData(
            ProjectIcons.iDots,
          ),
          color: ProjectColors.iconColor,
        ),
        SizedBox(
          width: 13.w,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


class _BodyContentScrollColumn extends StatelessWidget {
  const _BodyContentScrollColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageCarouselWidget(
            images: ProjectPictures.fotoesExample,
          ),
          const ProductNamingWidget(
            productNameInfo: ProjectStrings.productName,
            placeInfo: ProjectStrings.place,
            price: ProjectStrings.price,
            priceSign: ProjectStrings.priceSign,
            priceColor: ProjectColors.sellingColor,
          ),
          SizedBox(
            height: 10.h,
          ),
          const ProductDescWidget(
            descriptionInfo: ProjectStrings.descText,
          ),
          SizedBox(
            height: 10.h,
          ),
          const ProductCharacteristicWidget(
            floorInfo: ProjectStrings.floorExample,
            roofInfo: ProjectStrings.roofExample,
            repairInfo: ProjectStrings.repairExample,
          ),
          SizedBox(
            height: 10.h,
          ),
          AvitoCardWidget(),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
