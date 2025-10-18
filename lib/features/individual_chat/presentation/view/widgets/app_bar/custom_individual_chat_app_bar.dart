import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widgets/buttons/custom_back_button.dart';
import 'package:chatbox_app/core/widgets/spacing/width_space.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/app_bar/individual_chat_app_bar_list_tile.dart';
import 'package:flutter/material.dart';

class CustomIndividualChatAppBar extends StatelessWidget {
  const CustomIndividualChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: context.mainTextColor.withAlpha(10),
            offset: const Offset(0, 2),
            blurRadius: 1,
          )
        ],
      ),
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
