import 'package:dalel/core/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle splashStyle() => const TextStyle(
        fontSize: 64,
        fontWeight: FontWeight.w400,
        color: AppColor.splashTextColor,
        fontFamily: "Pacifico",
      );
  static TextStyle skipStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColor.skipColor,
      );
  static TextStyle onBoardingTitleStyle() => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: AppColor.skipColor,
        
      );
  static TextStyle onBoardingSubTitleStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: AppColor.skipColor,
        
      );
  static TextStyle buttonTextStyle() => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        
      );
}
