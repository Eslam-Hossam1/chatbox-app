import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final Widget? prefixIcon;
  const CustomTextFormField({
    this.onSaved,
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.validator,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        errorMaxLines: 2,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsetsDirectional.only(start: 24, end: 10),
                child: prefixIcon)
            : null,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              top: 16.h,
              bottom: 12.h,
            ),
        focusedBorder: focusedBorder ?? buildBorder(context.primaryColor),
        focusedErrorBorder: buildBorder(Color(0xffFF2D1B)),
        errorBorder: buildBorder(Color(0xffFF2D1B)),
        enabledBorder: enabledBorder ??
            buildBorder(
              context.outlineColor,
              2,
            ),
        hintStyle: hintStyle ??
            AppTextStyles.regular14(context).copyWith(
              color: context.secondaryTextColor,
            ),
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: AppTextStyles.medium16(context)
          .copyWith(color: context.mainTextColor),
      validator: validator,
    );
  }

  UnderlineInputBorder buildBorder(Color color, [double width = 1.5]) {
    return UnderlineInputBorder(
        borderSide: BorderSide(color: color, width: width));
  }
}
