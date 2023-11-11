

import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  bool value = false;
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (val) {
            setState(
              () {
                value = val!;
              },
            );
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
