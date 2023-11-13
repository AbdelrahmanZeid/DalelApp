import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/core/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_cubit.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    final auth = BlocProvider.of<AuthCubit>(context);

    return BlocConsumer<AuthCubit, AuthStates>(

        builder: (context, state) {
          return Form(
            key: auth.forgetPasswordFormKey,
            child: Column(
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
                state is ForgetPasswordLoadigState
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: AppColor.primaryColor,
                        ),
                      )
                    : CustomButton(
                        text: AppStrings.sendResetPasswordLink,
                        color: AppColor.primaryColor,
                      ),
                const SizedBox(
                  height: 17,
                ),
              ],
            ),
          );
        },
        listener: (context, state) {

          if(state is ForgetPasswordSuccessState){
            showSBar(message:"Check your email to reset password", context: context);
            navigationWithReplacment(context, "/sign_in");
          }else if(state is ForgetPasswordFailuerState){

          }
        });
  }
}
