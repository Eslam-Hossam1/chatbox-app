import '../../../../../core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class OurAppIsPerfectText extends StatelessWidget {
  const OurAppIsPerfectText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        'Our chat app is the perfect way to stay\nconnected with friends and family.',
        style: AppTextStyles.regular16(context, upperLimitRatio: 1.75).copyWith(
          color: Color(0xffB9C1BE),
          height: 26 / 16,
        ),
      ),
    );
  }
}
