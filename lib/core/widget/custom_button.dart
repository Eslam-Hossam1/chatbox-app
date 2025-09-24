import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    required this.child,
    this.onPressed,
    this.width,
    this.borderRadius,
    this.verticalPadding,
  });
  final Color? backgroundColor;
  final Widget child;
  final VoidCallback? onPressed;
  final double? width;
  final double? borderRadius;
  final double? verticalPadding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48.h ,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? context.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 16.h,
          ),
          child: child,
        ),
      ),
    );
  }
}
