import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/features/otp/presentation/views/widgets/resend_code/count_down_timer.dart';
import 'package:flutter/material.dart';

class ResendCodeWithTimer extends StatelessWidget {
  const ResendCodeWithTimer({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = AppTextStyles.medium14(context).copyWith(
      color: context.secondaryTextColor,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Resend code on email in ', style: textStyle),
        CountdownTimer(
          seconds: 15,
          timertextStyle: textStyle,
        ),
      ],
    );
  }
}
