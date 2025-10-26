
import 'dart:developer';

import 'package:chatbox_app/core/utils/assets.dart';
import 'package:chatbox_app/core/widgets/colored_svg_picture.dart';
import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () => log('send button pressed'),
      child: SizedBox.expand(
        child: Center(
          child: ColoredSvgPicture(
            assetImage: Assets.imagesSvgsSend,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
