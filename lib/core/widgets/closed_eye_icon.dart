import 'package:flutter/material.dart';

import '../theme/theme_colors_extension.dart';

class ClosedEyeIcon extends StatelessWidget {
  const ClosedEyeIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.visibility_off,
      color: context.mainTextColor,
      size: 24,
    );
  }
}
