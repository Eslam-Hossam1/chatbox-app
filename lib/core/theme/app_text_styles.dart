import 'package:flutter/widgets.dart';

import '../utils/size_config.dart';
import 'theme_colors_extension.dart';

abstract class AppTextStyles {
  // Font size 68
  static TextStyle bold68(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 68,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle regular68(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 68,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 40
  static TextStyle bold40(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 40,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle medium40(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 40,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 26
  static TextStyle regular26(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 26,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 25
  static TextStyle bold25(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 25,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 22
  static TextStyle bold22(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 22,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 20
  static TextStyle medium20(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 20,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle bold20(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 20,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 18
  static TextStyle bold18(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 18,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle regular18(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 18,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle medium18(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 18,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 16
  static TextStyle bold16(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 16,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle medium16(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 16,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle regular16(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 16,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 14
  static TextStyle regular14(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 14,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle medium14(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 14,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle bold14(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 14,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }
  static TextStyle bold13(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 13,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 13
  static TextStyle regular13(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 13,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle medium13(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 13,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 12
  static TextStyle regular12(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 12,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle medium12(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 12,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  // Font size 10
  static TextStyle regular10(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 10,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle medium10(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 10,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static TextStyle textStyleAwesomeDialogTitle(
    BuildContext context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 20,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
      color: context.mainTextColor,
    );
  }

  static TextStyle textStyleAwesomeDialogDesc(
    BuildContext context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 14,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
      color: context.mainTextColor,
    );
  }

  static TextStyle textStyleSemiBold34(
    context, {
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: _getResponsiveText(
        context,
        baseFontSize: 34,
        lowerLimitRatio: lowerLimitRatio,
        upperLimitRatio: upperLimitRatio,
      ),
    );
  }

  static double _getResponsiveText(
    context, {
    required double baseFontSize,
    double? lowerLimitRatio,
    double? upperLimitRatio,
  }) {
    double scaleFactor = _getScaleFactor(context);
    double responsizeTextFontSize = scaleFactor * baseFontSize;
    double lowerLimit =
        baseFontSize * (lowerLimitRatio ?? defaultLowerLimitRatio);
    double upperLimit =
        baseFontSize * (upperLimitRatio ?? defaultUpperLimitRatio);

    return responsizeTextFontSize.clamp(lowerLimit, upperLimit);
  }

  static double defaultUpperLimitRatio = 1.5;
  static double defaultLowerLimitRatio = .75;

  static double _getScaleFactor(context) {
    double width = MediaQuery.sizeOf(context).width;
    return width / SizeConfig.designWidth;
  }
}
