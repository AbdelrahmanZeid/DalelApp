import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingListItem = [
  OnBoardingModel(
      image: Assets.assetsImagesOnBoardingOne,
      title: AppStrings.onboardingItemTitleOne,
      subTitle: AppStrings.onboardingItemSubTitleOne),
  OnBoardingModel(
      image: Assets.assetsImagesOnBoardingTwo,
      title: AppStrings.onboardingItemSubTitleTwo,
      subTitle: AppStrings.onboardingItemSubTitleTwo),
  OnBoardingModel(
      image: Assets.assetsImagesOnBoardingThree,
      title: AppStrings.onboardingItemTitleThree,
      subTitle: AppStrings.onboardingItemSubTitleThree),
];
