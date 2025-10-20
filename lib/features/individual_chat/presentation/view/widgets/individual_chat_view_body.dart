import 'package:chatbox_app/core/extensions/media_size_extension.dart';
import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widgets/padding/chat_views_padding.dart';
import 'package:chatbox_app/core/widgets/spacing/height_space.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/app_bar/custom_individual_chat_app_bar.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/chat_bubble/text_chat_bubble/text_chat_bubble_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndividualChatViewBody extends StatelessWidget {
  const IndividualChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatViewsPadding(
      child: Column(
        children: [
          const HeightSpace(height: 16),
          const CustomIndividualChatAppBar(),
          const HeightSpace(height: 16),
        ],
      ),
    );
  }
}
