
import 'dart:developer';

import 'package:chatbox_app/core/utils/assets.dart';
import 'package:chatbox_app/core/widgets/colored_svg_picture.dart';
import 'package:flutter/material.dart';

class RecordButton extends StatelessWidget {
  const RecordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () => log('record button pressed'),
      child: SizedBox.expand(
        child: Center(
          child: ColoredSvgPicture(
            assetImage: Assets.imagesSvgsMicrophone,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
