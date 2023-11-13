import 'package:dalel/core/utils/app_assets.dart';
 import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPasswordViewBody(),
    );
  }
}

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 64,
        ),
        Center(
          child: Text(
            AppStrings.forgotPassword,
            style: AppTextStyle.onBoardingTitleStyle().copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: 235,
          height: 235,
          child: Image.asset(
            Assets.assetsImagesForgetPassword,
            width: 188,
            height: 169,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          AppStrings.enter4DigitCodeWeHaveSentTo,
          style: AppTextStyle.forgetPasswordStyle(),
        ),
        const SizedBox(
          height: 41,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: CustomTextFormField(
            lable: AppStrings.emailAddress,
            obscureText: false,
          ),
        ),
        const Spacer(),
        CustomButton(
          text: AppStrings.sendResetPasswordLink,
        ),
        const SizedBox(
          height: 17,
        ),
      ],
    );
  }
}
