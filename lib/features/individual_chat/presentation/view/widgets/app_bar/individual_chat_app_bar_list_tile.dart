import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/utils/constants.dart';
import 'package:chatbox_app/core/widgets/custom_cached_network_image.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/app_bar/individual_chat_app_bar_trailing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndividualChatAppBarListTile extends StatelessWidget {
  const IndividualChatAppBarListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipOval(
        child: CustomCachedNetworkImage(
          url: Constants.personUrlImageTest,
          width: 44.w,
          height: 44.w,
        ),
      ),
      title: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        'Richard Abass Waterson',
        style: AppTextStyles.bold14(context).copyWith(
          color: context.mainTextColor,
        ),
      ),
      subtitle: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        'Active now',
        style: AppTextStyles.regular12(context).copyWith(
          color: context.secondaryTextColor,
        ),
      ),
      trailing: IndividualChatAppBarTrailing(),
    );
  }
}
