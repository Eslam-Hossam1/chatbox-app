import '../theme/app_text_styles.dart';
import '../theme/theme_colors_extension.dart';
import 'spacing/height_space.dart';
import 'package:flutter/material.dart';

class SliverAuthHeaderText extends StatelessWidget {
  const SliverAuthHeaderText({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyles.bold18(context).copyWith(
              color: context.mainTextColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          HeightSpace(
            height: 17,
          ),
          Text(
            textAlign: TextAlign.center,
            subtitle,
            style: AppTextStyles.regular14(context).copyWith(
              color: context.mainTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
