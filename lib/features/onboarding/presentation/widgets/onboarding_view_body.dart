import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onboarding/data/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody({super.key});

  @override
  final PageController _pageController = PageController();
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              AppStrings.skip,
              style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              itemCount: onBoardingListItem.length,
              itemBuilder: (context, index) {
                return Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Container(
                        height: 290,
                        width: 343,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              onBoardingListItem[index].image,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Center(
                        child: CustomSmoothPageIndicator(
                          pageController: _pageController,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        onBoardingListItem[index].title,
                        style: AppTextStyle.onBoardingTitleStyle().copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        onBoardingListItem[index].subTitle,
                        style: AppTextStyle.onBoardingSubTitleStyle(),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 88,
                      ),
                      CustomButton(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
