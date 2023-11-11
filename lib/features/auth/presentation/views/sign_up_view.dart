import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    );
  }
}

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
        const  AuthFields(),
        ],
      ),
    );
  }
}

class AuthFields extends StatelessWidget {
  const AuthFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children:const [
          CustomTextFormField(
            lable: AppStrings.fristName,
          ),
           SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            lable: AppStrings.lastName,
          ),
           SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            lable: AppStrings.emailAddress,
          ),
           SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            lable: AppStrings.password,
          ),
        ],
      ),
    );
  }
}
