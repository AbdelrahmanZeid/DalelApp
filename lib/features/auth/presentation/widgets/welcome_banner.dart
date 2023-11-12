
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppStrings.appName,
            style: AppTextStyle.onBoardingTitleStyle().copyWith(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: AppColor.scaffoldBackGroundColor,
            ),
          ),
          Row(
            children: [

              
            ],
          ),
        ],
      ),
    );
  }
}
