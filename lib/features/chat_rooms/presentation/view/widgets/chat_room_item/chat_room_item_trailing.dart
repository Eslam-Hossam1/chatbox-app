
import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widgets/spacing/height_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatRoomItemTrailing extends StatelessWidget {
  const ChatRoomItemTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '2 min ago',
          style: AppTextStyles.regular10(context).copyWith(
            color: context.secondaryTextColor,
          ),
        ),
        const HeightSpace(height: 8),
        CircleAvatar(
          radius: 10.w,
          backgroundColor: context.secondaryColor,
          child: Center(
            child: Text(
              '2',
              style: AppTextStyles.regular10(context).copyWith(
                color: context.scaffoldBackgroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
