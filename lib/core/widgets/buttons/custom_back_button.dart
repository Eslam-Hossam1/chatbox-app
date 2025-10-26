import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_rounded,
        color: context.mainTextColor,
      ),
    );
  }
}
