import 'package:chatbox_app/features/chat_rooms/presentation/view/widgets/sliver_chat_rooms_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatRoomsViewBody extends StatelessWidget {
  const ChatRoomsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverChatRoomsHeader(),
      ],
    );
  }
}
