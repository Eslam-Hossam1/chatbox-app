import 'chat_rooms_view_body.dart';
import 'package:flutter/material.dart';

class ChatRoomsView extends StatelessWidget {
  const ChatRoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ChatRoomsViewBody(),
      ),
    );
  }
}
