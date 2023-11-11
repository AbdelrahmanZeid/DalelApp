import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.lable});
  final String lable;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(
          lable,
          style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColor.deepGrey,
          ),
        ),
      ),
    );
  }
}
