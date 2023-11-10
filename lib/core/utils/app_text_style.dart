import 'package:dalel/core/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle splashStyle() => const TextStyle(
        fontSize: 64,
        fontWeight: FontWeight.w400,
        color: AppColor.splashTextColor,
      );
}
