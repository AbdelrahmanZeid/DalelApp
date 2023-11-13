import 'package:dalel/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeManager {
  static ThemeData getTheme() => ThemeData(
        scaffoldBackgroundColor: AppColor.scaffoldBackGroundColor,
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.scaffoldBackGroundColor,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: AppColor.scaffoldBackGroundColor,
          ),
        ),
      );
}
