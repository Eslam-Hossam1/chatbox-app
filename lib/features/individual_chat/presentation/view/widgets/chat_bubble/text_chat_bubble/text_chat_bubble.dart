import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/chat_bubble/text_chat_bubble/my_text_chat_bubble.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/chat_bubble/text_chat_bubble/other_text_chat_bubble.dart';
import 'package:flutter/material.dart';

class TextChatBubble extends StatelessWidget {
  const TextChatBubble({
    super.key,
    required this.messageText,
    required this.messageDateTime,
    required this.isMine,
  });

  final String messageText;
  final DateTime messageDateTime;
  final bool isMine;
  @override
  Widget build(BuildContext context) {
    return isMine
        ? MyTextChatBubble(
            messageDateTime: messageDateTime,
            messageText: messageText,
          )
        : OtherTextChatBubble(
            messageDateTime: messageDateTime,
            messageText: messageText,
          );
  }
}
