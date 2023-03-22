import 'package:basic_ui_impl_first_task/assets/res/project_icons.dart';
import 'package:basic_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:basic_ui_impl_first_task/assets/text_styles/project_styles.dart';
import 'package:basic_ui_impl_first_task/basic_task/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class AvitoCardWidget extends StatelessWidget {
  AvitoCardWidget({Key? key}) : super(key: key);
  final Uri _url = Uri.parse('https://www.avito.ru/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      child: ProductCardWidget(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ProjectIcons.pAvito),
            Text(
              ProjectStrings.avito,
              style: ProjectStyles.boldBlackOpenSans.copyWith(fontSize: 15.sp),
            ),
          ],
        ),
      ),
    );
  }
}
