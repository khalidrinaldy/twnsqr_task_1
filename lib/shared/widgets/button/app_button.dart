import 'package:flutter/material.dart';
import 'package:twnsqr_task_1/core/utils/helper/helper.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';
import 'package:twnsqr_task_1/core/utils/theme/textstyle.dart';

part 'primary_button.dart';

abstract class AppButton {
  static Widget primary({
    required void Function()? onTap,
    Color? backgroundColor = AppColors.primary600,
    Color? foregroundColor = AppColors.black,
    BorderRadius? borderRadius,
    required String label,
    TextStyle? labelStyle,
    Widget? prefixIcon,
    Widget? suffixIcon,
    EdgeInsets? padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
  }) {
    return _PrimaryButton(
      onTap: onTap,
      label: label,
      labelStyle: labelStyle,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      padding: padding,
    );
  }
}
