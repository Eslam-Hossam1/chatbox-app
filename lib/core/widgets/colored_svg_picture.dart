import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ColoredSvgPicture extends StatelessWidget {
  const ColoredSvgPicture({
    super.key,
    required this.assetImage,
    required this.color,
  });
  final String assetImage;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetImage,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
