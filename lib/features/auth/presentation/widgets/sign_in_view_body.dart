
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/auth/presentation/widgets/sign_in_fields.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_banner.dart';
import 'package:flutter/material.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WelcomeBanner(),
        
        const SizedBox(
          height: 32,
        ),
        Text(
          AppStrings.welcomeBack,
          style: AppTextStyle.onBoardingTitleStyle().copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        const Expanded(
          child: SignInFields(),
        ),
      ],
    );
  }
}