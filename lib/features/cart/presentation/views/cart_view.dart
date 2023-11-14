import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_text_widget.dart';
import 'package:dalel/features/home/presentation/widgets/custom_topic_card.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CardViewBody(),
    );
  }
}

class CardViewBody extends StatelessWidget {
  const CardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                AppStrings.bazar,
                style: AppTextStyle.onBoardingTitleStyle().copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextWidget(
              text: AppStrings.historicalPeriods,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTopicCard(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextWidget(
              text: AppStrings.historicalCharacters,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomHistorivalItem(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextWidget(
              text: AppStrings.historicalSouvenirs,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomHistorivalItem(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomFloationActionButton(),
          ),
        ],
      ),
    );
  }
}

class CustomFloationActionButton extends StatelessWidget {
  const CustomFloationActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 67,
          height: 67,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(
              360,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.shopping_cart,
              size: 30,
              color: AppColor.white,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomHistorivalItem extends StatelessWidget {
  const CustomHistorivalItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
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
