import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  static Widget getLeading(BuildContext context) {
    return Image.asset(Assets.assetsImagesFrame);
  }
}


class ActionBodyWidget extends StatelessWidget {
  const ActionBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 6),
      child: Text(
        AppStrings.appName,
        style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
            fontWeight: FontWeight.w400, fontSize: 22, fontFamily: "Pacifico"),
      ),
    );
  }
}
