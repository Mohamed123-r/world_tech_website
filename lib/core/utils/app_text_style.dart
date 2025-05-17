import 'package:flutter/material.dart';
import 'package:world_tech_website/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle header1(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 40),
      fontWeight: FontWeight.bold,
      color: AppColors.blue,
    );
  }
  static TextStyle header2(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveScaleFactor(context, fontSize: 40),
        fontWeight: FontWeight.bold,
        color: AppColors.black,
    );
  }
  static TextStyle upBar(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }
  static TextStyle logoText(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 24),
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    );
  }
  static TextStyle buttonText(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 24),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }
  static TextStyle bodyText1(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 40),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }
  static TextStyle bodyHeader1(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 32),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }
  static TextStyle bodyDescription1(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 24),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }
  static TextStyle bodyDescription2(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }  static TextStyle bodyHeader2(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 26),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }  static TextStyle bodyDescription3(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 22),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }
  static TextStyle footerText(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveScaleFactor(context, fontSize: 18),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }




}

double getResponsiveScaleFactor(BuildContext context,
    {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = responsiveFontSize * 0.8;
  double upperLimit = responsiveFontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width <= 600) {
    return width / 600;
  } else if (width <= 1200) {
    return width / 1400;
  } else {
    return width / 1750;
  }
}
