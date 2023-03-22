import 'package:basic_ui_impl_first_task/basic_task/widgets/amount_indicator_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCarouselWidget extends StatefulWidget {
  const ImageCarouselWidget({required this.images, Key? key}) : super(key: key);
  final List<String> images;


  @override
  State<ImageCarouselWidget> createState() => _ImageCarouselWidgetState();
}

class _ImageCarouselWidgetState extends State<ImageCarouselWidget> {
  /// текцщий слайд
  int _current = 0;

  /// логика при перемещении слайдов
  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235.h,
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 235.h, viewportFraction: 1,
              onPageChanged: onPageChange,
              enableInfiniteScroll: false,
            ),
            items: widget.images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 14.w),
                      child: Image.asset(
                        image,
                        width: MediaQuery.of(context).size.width,
                        height: 235.h,
                        fit: BoxFit.fill,
                      ),
                    );
                },
              );
            }).toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AmountIndicatorWidget(currentValue: _current + 1, maxValue: widget.images.length,),
          ),
        ],
      ),
    );
  }
}
