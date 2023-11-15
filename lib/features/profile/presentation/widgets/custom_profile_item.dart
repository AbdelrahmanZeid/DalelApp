import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomProfileItem extends StatelessWidget {
   CustomProfileItem(
      {super.key,
      required this.preIconData,
      required this.postIconData,
      required this.text,
      this.onPressed});
  final IconData preIconData;
  final IconData postIconData;
  final String text;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 48,
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(preIconData),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppTextStyle.onBoardingTitleStyle().copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.splashTextColor,
                fontFamily: "Heebo"),
          ),
          const Spacer(),
          Icon(
            postIconData,
            size: 18,
          ),
        ],
      ),
    );
  }
}
