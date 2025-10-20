import 'package:chatbox_app/core/extensions/date_time_extension.dart';
import 'package:chatbox_app/core/extensions/media_size_extension.dart';
import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widgets/spacing/height_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextChatBubbleCore extends StatelessWidget {
  const TextChatBubbleCore({
    super.key,
    required this.containerAlignment,
    required this.backgroundColor,
    required this.textColor,
    required this.timeTextColor,
    required this.messageText,
    required this.messageTime,
  });

  final Alignment containerAlignment;
  final Color backgroundColor;
  final Color textColor;
  final Color? timeTextColor;
  final String messageText;
  final DateTime messageTime;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: containerAlignment,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: context.width * 0.8,
        ),
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r),
            bottomLeft: Radius.circular(12.r),
            bottomRight: Radius.circular(12.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              messageText,
              style: AppTextStyles.regular12(context).copyWith(
                color: textColor,
              ),
            ),
            const HeightSpace(height: 4),
            Text(
              messageTime.formatAsBubbleTime(),
              style: AppTextStyles.regular10(context).copyWith(
                color: timeTextColor ?? context.bubbleTimeTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
