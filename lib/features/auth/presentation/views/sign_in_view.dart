import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/core/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/presentation/widgets/dont_have_account.dart';
import 'package:dalel/features/auth/presentation/widgets/forget_password_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_banner.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_cubit.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInViewBody(),
    );
  }
}

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

class SignInFields extends StatefulWidget {
  const SignInFields({super.key});

  @override
  State<SignInFields> createState() => _SignInFieldsState();
}

class _SignInFieldsState extends State<SignInFields> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      builder: (BuildContext context, state) {
        AuthCubit auth = AuthCubit.get(context);
        return Form(
          key: auth.signInFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomTextFormField(
                  lable: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    auth.emailAddress = emailAddress;
                  },
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFormField(
                  lable: AppStrings.password,
                  onChanged: (password) {
                    auth.password = password;
                  },
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      auth.textVisable == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      auth.changeValue();
                    },
                  ),
                  obscureText: auth.textVisable,
                ),
                const SizedBox(
                  height: 8,
                ),
                const ForgetPasswordWidget(),
                const SizedBox(
                  height: 102,
                ),
                state is SignInLoadigState
                    ? const CircularProgressIndicator(
                        color: AppColor.primaryColor,
                      )
                    : CustomButton(
                        text: AppStrings.signIn,
                        color: AppColor.primaryColor,
                        onPressed: () {
                          if (auth.signUpFormKey.currentState!.validate()) {
                            auth.signUpWithEmailAndPassword();
                          }
                        },
                      ),
                const SizedBox(
                  height: 10,
                ),
                const DontHaveAccount(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, AuthStates state) {
        if (state is SignInSuccessState) {
          // showToast(
          //   message: 'Account Created Successfuly',
          // );
          navigationWithReplacment(context, "/home");
        } else if (state is SignInFailuerState) {
          // showToast(
          //   message: state.errMessage,
          // );
        }
      },
    );
  }
}
