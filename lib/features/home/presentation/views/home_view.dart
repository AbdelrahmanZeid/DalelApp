import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_text_widget.dart';
import 'package:dalel/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:dalel/features/home/presentation/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:dalel/features/home/presentation/widgets/custom_topic_card.dart';
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
          appBar:home.currentIndex==0? AppBar(
            leading: CustomAppBar.getLeading(context),
            actions: const [
              ActionBodyWidget(),
            ],
          ):null,
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
              height: 32,
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
          SliverToBoxAdapter(
            child: CustomHistorivalItem(),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
           SliverToBoxAdapter(
            child: CustomTextWidget(
              text: AppStrings.historicalSouvenirs,
            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
           SliverToBoxAdapter(
            child: CustomHistorivalItem(),
          ),
        ],
      ),
    );
  }
}

class CustomHistorivalItem extends StatelessWidget {
  const CustomHistorivalItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalCharactersCard(
          image: Assets.assetsImages800pxRichardCoeurDeLion,
          text: AppStrings.lionheart,
        ),
        HistoricalCharactersCard(
          image: Assets.assetsImages800pxRichardCoeurDeLion,
          text: AppStrings.lionheart,
        ),
        HistoricalCharactersCard(
          image: Assets.assetsImages800pxRichardCoeurDeLion,
          text: AppStrings.lionheart,
        ),
        HistoricalCharactersCard(
          image: Assets.assetsImages800pxRichardCoeurDeLion,
          text: AppStrings.lionheart,
        ),
      ],
    );
  }
}

class HistoricalCharactersCard extends StatelessWidget {
  const HistoricalCharactersCard(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 133,
      decoration: BoxDecoration(
        color: AppColor.white,
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
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                5,
              ),
              topLeft: Radius.circular(
                5,
              ),
            ),
            child: Image.asset(
              image,
              height: 96,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 4,
              right: 4,
            ),
            child: Text(
              text,
              style: AppTextStyle.onBoardingTitleStyle().copyWith(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
