import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class EditProfileSectionWidget extends StatelessWidget {
  const EditProfileSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 32,
          child: Image.asset(
            Assets.assetsImagesFrame,
            width: 50,
            height: 50,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'abdelrahman ibrahem',
              style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'zeid4643@gmail.com',
              style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.darkGrey,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit,
          ),
        ),
      ],
    );
  }
}
