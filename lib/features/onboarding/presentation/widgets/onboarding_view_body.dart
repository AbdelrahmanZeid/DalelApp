import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () => navigation(context, '/sign_up'),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                AppStrings.skip,
                style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const CustomPageView(),
        ],
      ),
    );
  }
}
