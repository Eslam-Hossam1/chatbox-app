import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/utils/assets.dart';
import 'package:chatbox_app/core/widgets/colored_svg_picture.dart';
import 'package:chatbox_app/core/widgets/spacing/width_space.dart';
import 'package:flutter/material.dart';

class IndividualChatAppBarTrailing extends StatelessWidget {
  const IndividualChatAppBarTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ColoredSvgPicture(
          assetImage: Assets.imagesSvgsCall,
          color: context.mainTextColor,
        ),
        WidthSpace(width: 8),
        ColoredSvgPicture(
          assetImage: Assets.imagesSvgsVideo,
          color: context.mainTextColor,
        ),
      ],
    );
  }
}
