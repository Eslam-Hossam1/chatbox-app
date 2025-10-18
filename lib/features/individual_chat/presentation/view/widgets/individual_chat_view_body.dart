import 'package:chatbox_app/core/widgets/padding/chat_views_padding.dart';
import 'package:chatbox_app/core/widgets/spacing/height_space.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/app_bar/custom_individual_chat_app_bar.dart';
import 'package:flutter/material.dart';

class IndividualChatViewBody extends StatelessWidget {
  const IndividualChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatViewsPadding(
      child: Column(
        children: [
          const HeightSpace(height: 16),
          const CustomIndividualChatAppBar(),
        ],
      ),
    );
  }
}
