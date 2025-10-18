import 'package:chatbox_app/core/widgets/spacing/sliver_height_space.dart';
import 'package:chatbox_app/features/chat_rooms/presentation/view/widgets/chat_room_item/chat_room_item.dart';
import 'package:chatbox_app/features/chat_rooms/presentation/view/widgets/sliver_chat_rooms_header.dart';
import 'package:flutter/material.dart';

class ChatRoomsViewBody extends StatelessWidget {
  const ChatRoomsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverHeightSpace(height: 18),
        const SliverChatRoomsHeader(),
        const SliverHeightSpace(height: 18),
        SliverList.builder(
          itemBuilder: (context, index) {
            return const ChatRoomItem();
          },
        ),
      ],
    );
  }
}
