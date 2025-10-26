import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/features/individual_chat/presentation/manager/chat_input_cubit/chat_input_cubit.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/send_message_section/record_button.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/send_message_section/send_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendAndRecordButtonsSwitcher extends StatelessWidget {
  const SendAndRecordButtonsSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatInputCubit, ChatInputState>(
      buildWhen: (previous, current) =>
          current.runtimeType != previous.runtimeType,
      builder: (context, state) {
        final isTyping = state is ChatInputTyping;
        return CircleAvatar(
          backgroundColor: context.primaryColor,
          radius: 22.w,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) => RotationTransition(
              turns: child is SendButton
                  ? Tween(begin: 0.75, end: 1.0).animate(animation)
                  : Tween(begin: 1.25, end: 1.0).animate(animation),
              child: FadeTransition(opacity: animation, child: child),
            ),
            child: isTyping
                ? const SendButton()
                : const RecordButton(),
          ),
        );
      },
    );
  }
}
