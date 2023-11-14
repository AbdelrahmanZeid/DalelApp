import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.forgetPasswordStyle().copyWith(
        color: AppColor.splashTextColor,
      ),
    );
  }
}