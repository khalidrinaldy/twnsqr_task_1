import 'package:flutter/material.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';

abstract class AppTextStyle {
  static TextStyle get sfProDisplay => const TextStyle(
        fontFamily: "SF Pro Display",
        height: 1,
        letterSpacing: 0,
        color: AppColors.black,
      );
}

extension TextstyleExtension on TextStyle {
  TextStyle get size10 => copyWith(
        fontSize: 10,
      );

  TextStyle get size11 => copyWith(
        fontSize: 11,
      );

  TextStyle get size12 => copyWith(
        fontSize: 12,
      );

  TextStyle get size13 => copyWith(
        fontSize: 13,
      );

  TextStyle get size14 => copyWith(
        fontSize: 14,
      );

  TextStyle get size15 => copyWith(
        fontSize: 15,
      );

  TextStyle get size16 => copyWith(
        fontSize: 16,
      );

  TextStyle get size18 => copyWith(
        fontSize: 18,
      );

  TextStyle get size20 => copyWith(
        fontSize: 20,
      );

  TextStyle get size24 => copyWith(
        fontSize: 24,
      );

  TextStyle get size26 => copyWith(
        fontSize: 26,
      );

  TextStyle get size28 => copyWith(
        fontSize: 28,
      );

  TextStyle get size30 => copyWith(
        fontSize: 30,
      );

  TextStyle get regular => copyWith(
        fontWeight: FontWeight.normal,
      );

  TextStyle get medium => copyWith(
        fontWeight: FontWeight.w500,
      );

  TextStyle get semiBold => copyWith(
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold => copyWith(
        fontWeight: FontWeight.bold,
      );

  TextStyle get extraBold => copyWith(
        fontWeight: FontWeight.w800,
      );

  TextStyle get black => copyWith(
        fontWeight: FontWeight.w900,
      );
}
