import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/assets_manager.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final controller = CarouselController();
int activeIndex = 0;



Widget buildImage(String urlImage, int index) =>
    Image.asset(urlImage, fit: BoxFit.fill);

Widget buildIndicator() => AnimatedSmoothIndicator(
  onDotClicked: animateToSlide,
  effect: ExpandingDotsEffect(dotWidth: 10.w,dotHeight: 10.h, activeDotColor: ColorManager.indicator),
  activeIndex: activeIndex,
  count: myImges.length,
);

void animateToSlide(int index) => controller.animateToPage(index);