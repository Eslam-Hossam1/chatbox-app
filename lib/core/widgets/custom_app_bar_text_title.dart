
import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:flutter/material.dart';

class CustomAppBarTextTitle extends StatelessWidget {
  const CustomAppBarTextTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.bold20(context).copyWith(
        color: context.mainTextColor,
      ),
    );
  }
}
