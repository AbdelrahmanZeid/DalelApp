import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.textInputType,
      this.suffixIcon,
      required this.lable,
      this.onChanged,
     required this.obscureText,
      this.onFieldSubmitted});
  final String lable;

  IconButton? suffixIcon;
  TextInputType? textInputType;

  final Function(String value)? onChanged;
  final Function(String value)? onFieldSubmitted;

  bool obscureText=false;
  @override
  Widget build(BuildContext context) {
    final auth = BlocProvider.of<AuthCubit>(context);
    return TextFormField(
      keyboardType: textInputType,
      obscureText: obscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return "This field is required";
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        label: Text(
          lable,
          style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColor.deepGrey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
      ),
    );
  }
}
