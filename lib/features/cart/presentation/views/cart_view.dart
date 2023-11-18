import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_text_widget.dart';
import 'package:dalel/features/cart/presentation/widgets/cart_view_body.dart';
import 'package:dalel/features/home/presentation/widgets/custom_topic_card.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CardViewBody(),
      ),
    );
  }
}



class CustomHistoricalItem extends StatelessWidget {
  const CustomHistoricalItem({
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
