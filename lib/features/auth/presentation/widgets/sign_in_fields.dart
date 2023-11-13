import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/core/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/presentation/widgets/dont_have_account.dart';
import 'package:dalel/features/auth/presentation/widgets/forget_password_widget.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_cubit.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  height: 88,
                ),
                state is SignInLoadigState
                    ? const CircularProgressIndicator(
                        color: AppColor.primaryColor,
                      )
                    : CustomButton(
                        text: AppStrings.signIn,
                        color: AppColor.primaryColor,
                        onPressed: () {
                          if (auth.signInFormKey.currentState!.validate()) {
                            auth.signInWithEmailAndPasswod();
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
          showSBar(message: 'Log In successfuly', context: context);
          navigationWithReplacment(context, "/home");
        } else if (state is SignUpFailuerState) {
          showSBar(
            message: state.toString(),
            context: context,
          );
        }
      },
    );
  }
}
