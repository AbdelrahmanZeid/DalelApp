import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.pageController});
  final int currentIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return currentIndex == 2
        ? Column(
            children: [
              CustomButton(
                text: AppStrings.createAccount,
                onPressed: () {
                 getIt<CascheHelper>().saveBool(
                    key: "isOnBoardingVisited",
                    value: true,
                  );
                  navigationWithReplacment(context, '/sign_up');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: navigation(context, '/sign_in'),
                child: Text(
                  AppStrings.loginNow,
                  style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          )
        : CustomButton(
            text: AppStrings.next,
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.bounceInOut,
              );
            },
          );
  }
}
