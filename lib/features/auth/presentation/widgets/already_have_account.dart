import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     const   Text(
          AppStrings.alreadyHaveAnAccount,
        ),
        GestureDetector(
          onTap: ()=>navigationWithReplacment(context,"/sign_in"),
          child:const Text(
            AppStrings.signIn,
          ),
        ),
      ],
    );
  }
}