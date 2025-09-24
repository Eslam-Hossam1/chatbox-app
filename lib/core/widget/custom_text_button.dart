import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.width,
    required this.text,
    required this.onPressed,
  });
  final double? width;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      width: width,
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: AppTextStyles.bold16(context).copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
