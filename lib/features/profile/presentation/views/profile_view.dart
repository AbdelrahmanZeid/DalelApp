 import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/profile/presentation/widgets/custom_edit_profile_widget.dart';
import 'package:dalel/features/profile/presentation/widgets/custom_profile_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
                    fontFamily: "Heboo"),
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
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomProfileItem(
                  preIconData: Icons.person,
                  postIconData: Icons.arrow_forward_ios,
                  text: AppStrings.editProfile,
                ),
             const   Divider(
                  color: AppColor.black,
                  height: 2,
                ),
                CustomProfileItem(
                  preIconData: Icons.notifications,
                  postIconData: Icons.arrow_forward_ios,
                  text: AppStrings.notification,
                ),
             const   Divider(
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
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomProfileItem(
                    preIconData: Icons.settings,
                    postIconData: Icons.arrow_forward_ios,
                    text: AppStrings.settings,
                  ),
                  const Divider(
                    color: AppColor.black,
                    height: 2,
                  ),
                  CustomProfileItem(
                    preIconData: Icons.security,
                    postIconData: Icons.arrow_forward_ios,
                    text: AppStrings.security,
                  ),
                  const Divider(
                    color: AppColor.black,
                    height: 2,
                  ),
                   CustomProfileItem(
                  preIconData: Icons.privacy_tip,
                  postIconData: Icons.arrow_forward_ios,
                  text: AppStrings.privacyPolicy,
                ),
                const Divider(
                  color: AppColor.black,
                  height: 2,
                ),
                CustomProfileItem(
                  preIconData: Icons.logout,
                  postIconData: Icons.arrow_forward_ios,
                  text: AppStrings.logOut,
                  onPressed: () {
                    
                    FirebaseAuth.instance.signOut();
                  },
                ),
                ],
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
