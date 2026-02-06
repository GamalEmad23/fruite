import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class customeIndecator extends StatelessWidget {
  const customeIndecator({
    super.key,
    required this.h,
    required PageController pageController,
    required this.pages,
  }) : _pageController = pageController;

  final double h;
  final PageController _pageController;
  final List<dynamic> pages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: h * .1),
      child: SmoothPageIndicator(
        controller: _pageController, // PageController
        count: pages.length,
        axisDirection: Axis.horizontal,
        effect: ColorTransitionEffect(
          dotColor: AppColors.buttonDisabled,
          activeDotColor: AppColors.buttonPrimary,
          dotHeight: 12,
          dotWidth: 12
        )
      ),
    );
  }
}
