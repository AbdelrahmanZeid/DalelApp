import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_text_widget.dart';
import 'package:dalel/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:dalel/features/home/presentation/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:dalel/features/home/view_model/cubits/home_cubit.dart';
import 'package:dalel/features/home/view_model/cubits/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, HomeStates state) {
        final home = HomeCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            leading: CustomAppBar.getLeading(context),
            actions: const [
              ActionBodyWidget(),
            ],
          ),
          body: home.navBarViews[home.currentIndex],
          bottomNavigationBar: CustomBottomNavBarWidget(
            currentIndex: home.currentIndex,
            onTap: (int value) {
              home.onTap(value);
            },
            items: home.bottomNavigationBarItemList,
          ),
        );
      },
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomTextWidget(
              text: AppStrings.historicalPeriods,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTopicCard(),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height:32,
            ),
          ),
           SliverToBoxAdapter(
            child: CustomTextWidget(
              text: AppStrings.historicalCharacters,
            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTopicCard extends StatelessWidget {
  const CustomTopicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 164,
          height: 96,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(
                  0,
                  5,
                ),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppStrings.aboutAncientEgypt,
                style: AppTextStyle.onBoardingTitleStyle().copyWith(
                  fontSize: 16,
                  color: AppColor.splashTextColor,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                child: Image.asset(
                  Assets.assetsImagesUnsplashMoonoldXeqs,
                  width: 47,
                  height: 64,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 164,
          height: 96,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(
                  0,
                  5,
                ),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppStrings.islamicEra,
                style: AppTextStyle.onBoardingTitleStyle().copyWith(
                  fontSize: 16,
                  color: AppColor.splashTextColor,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                child: Image.asset(
                  Assets.assetsImagesFrame_2,
                  width: 47,
                  height: 64,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
