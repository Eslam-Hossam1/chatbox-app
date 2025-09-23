import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/utils/size_config.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyles {
  // Font size 68
  static TextStyle bold68(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 68),
    );
  }

  static TextStyle regular68(context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(context, baseFontSize: 68),
    );
  }

  // Font size 40
  static TextStyle bold40(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 40),
    );
  }

  static TextStyle medium40(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 40),
    );
  }

  // Font size 26
  static TextStyle regular26(context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(context, baseFontSize: 26),
    );
  }

  // Font size 25
  static TextStyle bold25(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 25),
    );
  }

  // Font size 22
  static TextStyle bold22(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 22),
    );
  }

  // Font size 20
  static TextStyle medium20(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 20),
    );
  }

  static TextStyle bold20(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 20),
    );
  }

  // Font size 18
  static TextStyle bold18(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 18),
    );
  }

  static TextStyle regular18(context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(context, baseFontSize: 18),
    );
  }

  static TextStyle medium18(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 18),
    );
  }

  // Font size 16
  static TextStyle bold16(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 16),
    );
  }

  static TextStyle medium16(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 16),
    );
  }

  // Font size 14
  static TextStyle regular14(context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(context, baseFontSize: 14),
    );
  }

  static TextStyle medium14(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 14),
    );
  }

  static TextStyle bold14(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 14),
    );
  }

  // Font size 13
  static TextStyle regular13(context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(context, baseFontSize: 13),
    );
  }

  static TextStyle medium13(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 13),
    );
  }

  // Font size 12
  static TextStyle regular12(context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(context, baseFontSize: 12),
    );
  }

  static TextStyle medium12(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 12),
    );
  }

  // Font size 10
  static TextStyle regular10(context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(context, baseFontSize: 10),
    );
  }

  static TextStyle medium10(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 10),
    );
  }

  static TextStyle textStyleAwesomeDialogTitle(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: _getResponsiveText(context, baseFontSize: 20),
      color: context.mainTextColor,
    );
  }

  static TextStyle textStyleAwesomeDialogDesc(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(context, baseFontSize: 14),
      color: context.mainTextColor,
    );
  }

  static double _getResponsiveText(context, {required double baseFontSize}) {
    double scaleFactor = _getScaleFactor(context);
    double responsizeTextFontSize = scaleFactor * baseFontSize;
    double lowerLimit = baseFontSize * .75;
    double upperLimit = baseFontSize * 1.25;

    return responsizeTextFontSize.clamp(lowerLimit, upperLimit);
  }

  static double _getScaleFactor(context) {
    double width = MediaQuery.sizeOf(context).width;
    return width / SizeConfig.designWidth;
  }
}