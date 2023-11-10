import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/features/onboarding/data/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: onBoardingListItem.length,
      effect:const  ExpandingDotsEffect(
        activeDotColor: AppColor.splashTextColor,
        dotHeight: 7,
        dotWidth: 10,
      ),
    );
  }
}
