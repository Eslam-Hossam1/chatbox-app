import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        Assets.imagesSvgsSearch,
        colorFilter: ColorFilter.mode(context.mainTextColor, BlendMode.srcIn),
      ),
    );
  }
}
