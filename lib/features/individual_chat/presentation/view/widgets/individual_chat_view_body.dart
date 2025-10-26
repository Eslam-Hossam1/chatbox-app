import 'package:chatbox_app/core/widgets/spacing/height_space.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/app_bar/custom_individual_chat_app_bar.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/chat_bubbles_list_view.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/custom_chat_app_bar_divider.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/custom_send_message_section_divider.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/send_message_section/send_message_section.dart';
import 'package:flutter/material.dart';

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
          child: ChatBubblesListView(),
        ),
        const CustomSendMessageSectionDivider(),
        SendMessageSection(),
      ],
    );
  }
}
