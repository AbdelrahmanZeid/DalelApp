import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {

  bool? value=false;
  Widget build(BuildContext context) {
    final auth = BlocProvider.of<AuthCubit>(context);
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (val) {
          setState(() {
              value=val;
           auth.switchTermAndCondition(newValue: val!);
          });
          },
        ),
        const Text(
          AppStrings.iHaveAgreeToOur,
        ),
        const Text(
          AppStrings.termsAndCondition,
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
