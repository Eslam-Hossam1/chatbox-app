import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/individual_chat_view_body.dart';
import 'package:flutter/material.dart';

class IndividualChatView extends StatelessWidget {
  const IndividualChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: IndividualChatViewBody(),
      ),
    );
  }
}
