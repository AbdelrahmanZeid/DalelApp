import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     const   Text(
          AppStrings.dontHaveAnAccount,
        ),
        GestureDetector(
          onTap: ()=>navigationWithReplacment(context,"/sign_up"),
          child:const Text(
            AppStrings.signUp,
          ),
        ),
      ],
    );
  }
}