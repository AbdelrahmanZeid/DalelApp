import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,this.color, required this.text,this.onPressed});
  Color?color;
  final String text;

  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(
          343,
          65,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        backgroundColor:color?? AppColor.primaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyle.buttonTextStyle(),
      ),
    );
  }
}
