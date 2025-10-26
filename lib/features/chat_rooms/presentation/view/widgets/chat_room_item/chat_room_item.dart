import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/utils/constants.dart';
import 'package:chatbox_app/core/widgets/custom_cached_network_image.dart';
import 'package:chatbox_app/features/chat_rooms/presentation/view/widgets/chat_room_item/chat_room_item_trailing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatRoomItem extends StatelessWidget {
  const ChatRoomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.symmetric(
        horizontal: Constants.chatViewsPadding.w,
      ),
      leading: ClipOval(
        child: CustomCachedNetworkImage(
          width: 44.w,
          height: 44.w,
          url: Constants.personUrlImageTest,
        ),
      ),
      title: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        'Richard Abass Waterson',
        style: AppTextStyles.medium14(context).copyWith(
          color: context.mainTextColor,
        ),
      ),
      subtitle: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        'لا تنسى ضربة البعبع بني',
        style: AppTextStyles.regular12(context).copyWith(
          color: context.secondaryTextColor,
        ),
      ),
      trailing: const ChatRoomItemTrailing(),
    );
  }
}
