import 'package:chatbox_app/core/utils/constants.dart';
import 'package:chatbox_app/core/widgets/custom_app_bar_text_title.dart';
import 'package:chatbox_app/core/widgets/custom_cached_network_image.dart';
import 'package:chatbox_app/core/widgets/search_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliverChatRoomsHeader extends StatelessWidget {
  const SliverChatRoomsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.chatRoomsPadding.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SearchIconButton(),
            const CustomAppBarTextTitle(
              title: 'Home',
            ),
            ClipOval(
              child: CustomCachedNetworkImage(
                width: 44.w,
                height: 44.w,
                url: Constants.personUrlImageTest,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
