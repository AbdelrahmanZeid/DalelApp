import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onboarding/data/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  int currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        onPageChanged: (value) {
          currentIndex = value;
          setState(() {});
        },
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
                currentIndex == onBoardingListItem.length - 1
                    ? Column(
                        children: [
                          CustomButton(
                            text: AppStrings.createAccount,
                            onPressed: () {
                              navigationWithReplacment(context, '/sign_up');
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            AppStrings.loginNow,
                            style:
                                AppTextStyle.onBoardingSubTitleStyle().copyWith(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      )
                    : CustomButton(
                        text: AppStrings.next,
                        onPressed: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.bounceInOut,
                          );
                        },
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
