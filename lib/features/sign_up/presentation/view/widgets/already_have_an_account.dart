import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widget/clickable_text.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have and account? ",
          style: AppTextStyles.medium14(context).copyWith(
            color: context.mainTextColor,
          ),
        ),
        ClickableText(
          text: 'Login',
          style: AppTextStyles.bold14(context).copyWith(
            color: context.primaryColor,
          ),
        ),
      ],
    );
  }
}
