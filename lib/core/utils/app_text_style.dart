import 'package:flutter/material.dart';
import 'package:world_tech_website/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle style40w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 40),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }

  static TextStyle style32w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 32),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }

  static TextStyle style26w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 26),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }

  static TextStyle style24w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 24),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }

  static TextStyle style22w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 22),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }

  static TextStyle style20w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }

  static TextStyle style20w700(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 20),
      fontWeight: FontWeight.w700,
      color: AppColors.black,
    );
  }

  static TextStyle style16w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }

  static TextStyle style14w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }
  static TextStyle style10w500(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 10),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }
}

double getResponsiveScaleFactor(
  BuildContext context, {
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = responsiveFontSize * 0.8;
  double upperLimit = responsiveFontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width <= 600) {
    return width / 650;
  } else if (width <= 1200) {
    return width / 1400;
  } else {
    return width / 1750;
  }
}
