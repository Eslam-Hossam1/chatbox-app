import 'package:chatbox_app/core/widgets/padding/chat_views_padding.dart';
import 'package:chatbox_app/core/widgets/spacing/height_space.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/app_bar/custom_individual_chat_app_bar.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/chat_bubble/text_chat_bubble/text_chat_bubble.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/custom_chat_app_bar_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndividualChatViewBody extends StatelessWidget {
  const IndividualChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeightSpace(height: 4),
        const CustomIndividualChatAppBar(),
        const HeightSpace(height: 4),
        const CustomChatAppBarDivider(),
        Expanded(
            child: ChatViewsPadding(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            separatorBuilder: (context, index) {
              return const HeightSpace(height: 16);
            },
            itemCount: 20,
            itemBuilder: (context, index) {
              return TextChatBubble(
                isMine: index % 2 == 0,
                messageText:
                    'Hello Richard Abass Waterson, where is my mom nicole waterson',
                messageDateTime: DateTime.now(),
              );
            },
          ),
        ))
      ],
    );
  }
}
