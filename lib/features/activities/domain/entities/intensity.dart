import 'package:flutter/material.dart';
import 'package:twnsqr_task_1/core/utils/helper/helper.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';

enum Intensity { light, medium, high }

extension IntensityExtension on Intensity {
  String get label {
    switch (this) {
      case Intensity.light:
        return "Light";
      case Intensity.medium:
        return "Medium";
      case Intensity.high:
        return "High";
    }
  }

  Color get bgColor {
    switch (this) {
      case Intensity.light:
        return isDarkMode ? AppColors.lightIntensityTitle : AppColors.lightIntensity;
      case Intensity.medium:
        return isDarkMode ? AppColors.mediumIntensityTitle : AppColors.mediumIntensity;
      case Intensity.high:
        return isDarkMode ? AppColors.highIntensityTitle : AppColors.highIntensity;
    }
  }

  Color get fgColor {
    switch (this) {
      case Intensity.light:
        return isDarkMode ? AppColors.lightIntensity : AppColors.lightIntensityTitle;
      case Intensity.medium:
        return isDarkMode ? AppColors.mediumIntensity : AppColors.mediumIntensityTitle;
      case Intensity.high:
        return isDarkMode ? AppColors.highIntensity : AppColors.highIntensityTitle;
    }
  }
}

extension IntensityExtensionFromString on String {
  Intensity toIntensity() {
    switch (toLowerCase()) {
      case "light":
        return Intensity.light;
      case "medium":
        return Intensity.medium;
      case "high":
        return Intensity.high;
      default:
        return Intensity.light;
    }
  }
}
