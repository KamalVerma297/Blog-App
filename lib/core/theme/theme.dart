import 'package:blog_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppColors.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static inputDecorationTheme([Color hintTextColor = AppColors.blackColor]) =>
      InputDecorationTheme(
        enabledBorder: _border(),
        focusedBorder: _border(AppColors.gradient2),
        errorBorder: _border(AppColors.errorColor),
        focusedErrorBorder: _border(AppColors.gradient2),
        contentPadding: const EdgeInsets.all(22),
        hintStyle: TextStyle(color: hintTextColor),
      );

  static final darkThemeMode = ThemeData.dark(useMaterial3: true).copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      iconTheme: IconThemeData(color: AppColors.whiteColor),
    ),
    inputDecorationTheme: inputDecorationTheme(AppColors.whiteColor),
  );

  static final lightThemeMode = ThemeData.light(useMaterial3: true).copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: AppColors.whiteColor,
    inputDecorationTheme: inputDecorationTheme(),
  );
}
