import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSendMessageSectionDivider extends StatelessWidget {
  const CustomSendMessageSectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final baseColor = context.outlineColor.withAlpha(30);

    return Container(
      height: 2.h,
      decoration: BoxDecoration(
        color: baseColor,
        boxShadow: [
          BoxShadow(
            color: baseColor.withAlpha(50),
            blurRadius: 6,
            offset: const Offset(0, -2),
          ),
        ],
      ),
    );
  }
}
