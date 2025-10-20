import 'package:chatbox_app/core/widgets/buttons/custom_back_button.dart';
import 'package:chatbox_app/core/widgets/padding/chat_views_padding.dart';
import 'package:chatbox_app/core/widgets/spacing/width_space.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/app_bar/individual_chat_app_bar_list_tile.dart';
import 'package:flutter/material.dart';

class CustomIndividualChatAppBar extends StatelessWidget {
  const CustomIndividualChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChatViewsPadding(
      child: Row(
        children: [
          CustomBackButton(),
          WidthSpace(width: 8),
          Expanded(
            child: IndividualChatAppBarListTile(),
          ),
        ],
      ),
    );
  }
}
