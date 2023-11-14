import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/profile/presentation/widgets/custom_edit_profile_widget.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileViewBody(),
    );
  }
}

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                AppStrings.profile,
                style: AppTextStyle.onBoardingTitleStyle().copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Heboo"
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child: EditProfileSectionWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              AppStrings.account,
              style: AppTextStyle.onBoardingTitleStyle().copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [
                CustomProfileItem(
                  preIconData: Icons.person,
                  postIconData: Icons.arrow_forward_ios,
                  text: AppStrings.editProfile,
                ),
                Divider(
                  color: AppColor.black,
                  height: 2,
                ),
                CustomProfileItem(
                  preIconData: Icons.notifications,
                  postIconData: Icons.arrow_forward_ios,
                  text: AppStrings.notification,
                ),
                 Divider(
                  color: AppColor.black,
                  height: 2,
                ),
              ],
            ),
            
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
           SliverToBoxAdapter(
            child: Text(
              AppStrings.general,
              style: AppTextStyle.onBoardingTitleStyle().copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.darkGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomProfileItem extends StatelessWidget {
  const CustomProfileItem(
      {super.key,
      required this.preIconData,
      required this.postIconData,
      required this.text});
  final IconData preIconData;
  final IconData postIconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 48,
      child: Row(
        children: [
          Icon(
            preIconData,
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
              fontFamily: "Heebo"
            ),
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
