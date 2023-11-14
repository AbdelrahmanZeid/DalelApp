
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTopicCard extends StatelessWidget {
  const CustomTopicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 164,
          height: 96,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(
                  0,
                  5,
                ),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppStrings.aboutAncientEgypt,
                style: AppTextStyle.onBoardingTitleStyle().copyWith(
                  fontSize: 16,
                  color: AppColor.splashTextColor,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                child: Image.asset(
                  Assets.assetsImagesUnsplashMoonoldXeqs,
                  width: 47,
                  height: 64,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 164,
          height: 96,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(
              5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(
                  0,
                  5,
                ),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppStrings.islamicEra,
                style: AppTextStyle.onBoardingTitleStyle().copyWith(
                  fontSize: 16,
                  color: AppColor.splashTextColor,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                child: Image.asset(
                  Assets.assetsImagesFrame_2,
                  width: 47,
                  height: 64,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
