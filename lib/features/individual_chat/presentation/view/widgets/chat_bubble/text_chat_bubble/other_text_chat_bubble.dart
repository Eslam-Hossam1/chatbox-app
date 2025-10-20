import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/chat_bubble/text_chat_bubble/text_chat_bubble_core.dart';
import 'package:flutter/material.dart';

class OtherTextChatBubble extends StatelessWidget {
  const OtherTextChatBubble({
    super.key,
    required this.messageText,
    required this.messageDateTime,
  });

  final String messageText;
  final DateTime messageDateTime;

  @override
  Widget build(BuildContext context) {
    return TextChatBubbleCore(
      containerAlignment: Alignment.centerLeft,
      backgroundColor: context.otherChatBubbleBackground,
      textColor: context.otherChatBubbleTextColor,
      timeTextColor: context.bubbleTimeTextColor,
      messageText: messageText,
      messageTime: messageDateTime,
    );
  }
}
