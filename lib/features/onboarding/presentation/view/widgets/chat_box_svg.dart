import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';

class ChatBoxSvg extends StatelessWidget {
  const ChatBoxSvg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SvgPicture.asset(
        Assets.imagesSvgsOnboardingChatbox,
        width: 100.w,
      ),
    );
  }
}
