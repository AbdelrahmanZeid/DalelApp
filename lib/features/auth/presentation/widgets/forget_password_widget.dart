
import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigation(context, "/fogetPassword"),
      child: const Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
        ),
      ),
    );
  }
}