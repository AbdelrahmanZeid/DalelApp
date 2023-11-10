import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        AppStrings.appName,
        style: AppTextStyle.splashStyle(),
      ),
    );
  }
}
