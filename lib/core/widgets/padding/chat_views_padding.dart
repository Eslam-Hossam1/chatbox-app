import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants.dart';

class ChatViewsPadding extends StatelessWidget {
  const ChatViewsPadding({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Constants.chatViewsPadding.w,
      ),
      child: child,
    );
  }
}
