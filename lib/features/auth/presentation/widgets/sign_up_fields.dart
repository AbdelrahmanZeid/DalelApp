import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/core/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/presentation/widgets/already_have_account.dart';
import 'package:dalel/features/auth/presentation/widgets/term_and_condition.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_cubit.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpFields extends StatefulWidget {
  const SignUpFields({super.key});

  @override
  State<SignUpFields> createState() => _SignUpFieldsState();
}

class _SignUpFieldsState extends State<SignUpFields> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      builder: (BuildContext context, state) {
        AuthCubit auth = AuthCubit.get(context);
        return Form(
          key: auth.signUpFormKey,
          child: Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomTextFormField(
                  lable: AppStrings.fristName,
                  onChanged: (firstName) {
                    auth.firstName = firstName;
                  },
                  textInputType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomTextFormField(
                  onChanged: (lastName) {
                    auth.lastName = lastName;
                  },
                  lable: AppStrings.lastName,
                  textInputType: TextInputType.name,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomTextFormField(
                  lable: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    auth.emailAddress = emailAddress;
                  },
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 28,
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
                  height: 16,
                ),
                const TermsAndCondition(),
                const SizedBox(
                  height: 50,
                ),
                state is SignUpLoadigState
                    ?const Center(
                      child:  CircularProgressIndicator(
                          color: AppColor.primaryColor,
                        ),
                    )
                    : auth.isActive == true
                        ? CustomButton(
                            text: AppStrings.signUp,
                            color: AppColor.primaryColor,
                            onPressed: () {
                              if (auth.signUpFormKey.currentState!.validate()) {
                                
                                auth.signUpWithEmailAndPassword();
                              }
                            },
                          )
                        : CustomButton(
                            text: AppStrings.signUp,
                            color: AppColor.grey,
                            onPressed: () {},
                          ),
                const SizedBox(
                  height: 10,
                ),
                const AlreadyHaveAccount(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, AuthStates state) {
        if (state is SignUpSuccessState) {
          showSBar(message: 'Successfuly check your email to verify your account', context: context);
          navigationWithReplacment(context, "/sign_in");
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
