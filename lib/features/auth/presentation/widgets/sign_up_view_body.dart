
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/auth/presentation/widgets/sign_up_fields.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 152,
          ),
          Text(
            AppStrings.welcome,
            style: AppTextStyle.onBoardingTitleStyle().copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const SignUpFields(),
        ],
      ),
    );
  }
}



