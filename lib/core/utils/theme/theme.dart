import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';
import 'package:twnsqr_task_1/core/utils/theme/textstyle.dart';

class AppTheme {
  static ThemeData get mainTheme => ThemeData(
      primaryColor: AppColors.primary500,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: "sfProDisplay",
      textTheme: TextTheme(
        bodySmall: AppTextStyle.sfProDisplay,
        bodyMedium: AppTextStyle.sfProDisplay,
        bodyLarge: AppTextStyle.sfProDisplay,
      ).apply(
        fontFamily: "sfProDisplay",
        bodyColor: AppColors.black,
        displayColor: AppColors.black,
      ),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: AppColors.black,
        ),
        centerTitle: true,
        titleTextStyle: AppTextStyle.sfProDisplay.size14.semiBold,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          textStyle: AppTextStyle.sfProDisplay.size16.bold.copyWith(
            color: Colors.white,
          ),
          backgroundColor: AppColors.primary500,
          minimumSize: Size.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 18),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          textStyle: AppTextStyle.sfProDisplay.size16.bold,
          backgroundColor: Colors.white,
          minimumSize: Size.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: AppColors.primary500,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 18),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        side: const BorderSide(
          color: AppColors.primary500,
          width: 1.5,
        ),
        fillColor: WidgetStateProperty.all(Colors.transparent),
        checkColor: WidgetStateProperty.all(AppColors.primary500),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary500,
        circularTrackColor: AppColors.primary500,
        linearTrackColor: AppColors.primary300,
      ),
      // inputDecorationTheme: InputDecorationTheme(
      //   contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      //   isDense: true,
      //   fillColor: Colors.white,
      //   border: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(6.614),
      //     borderSide: const BorderSide(
      //       color: AppColors.primary,
      //     ),
      //   ),
      //   enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(6.614),
      //     borderSide: const BorderSide(
      //       color: AppColors.primary,
      //     ),
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(6.614),
      //     borderSide: const BorderSide(
      //       color: AppColors.primary,
      //       width: 1.5,
      //     ),
      //   ),
      //   hintStyle: GoogleFonts.sfProDisplay(
      //     fontSize: 14,
      //     fontWeight: FontWeight.w600,
      //     color: AppColors.greyMedium,
      //   ),
      // ),
      );
}
