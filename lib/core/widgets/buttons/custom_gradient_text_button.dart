import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientTextButton extends StatelessWidget {
  const CustomGradientTextButton(
      {super.key, required this.buttontext, required this.onTap});
  final String buttontext;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 51, 163, 107),
              Color(0xFF16BD75),
              Color(0xFF1BA67A),
              Color(0xFF1F927E),
              Color(0xFF1F927E),
              Color(0xFF218E80),
              Color(0xFF208D80),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: Text(
            buttontext,
            style: AppTextStyles.bold16(
              context,
              upperLimitRatio: 1.5,
            ).copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
