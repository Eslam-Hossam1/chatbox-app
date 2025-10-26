import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/features/individual_chat/presentation/manager/chat_input_cubit/chat_input_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendMessageTextField extends StatefulWidget {
  const SendMessageTextField({
    super.key,
  });

  @override
  State<SendMessageTextField> createState() => _SendMessageTextFieldState();
}

class _SendMessageTextFieldState extends State<SendMessageTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      if (_controller.text.length == 1) {
        context.read<ChatInputCubit>().startTyping();
      } else if (_controller.text.isEmpty) {
        context.read<ChatInputCubit>().stopTyping();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: TextField(
        controller: _controller,
        onTapOutside: (event) => FocusScope.of(context).unfocus,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        cursorHeight: 20.h,
        decoration: InputDecoration(
          suffixIconConstraints: BoxConstraints(),
          hintStyle: AppTextStyles.medium12(context).copyWith(
            color: context.secondaryTextColor,
          ),
          hintText: 'Write your message',
          contentPadding: EdgeInsets.only(left: 12.h, bottom: 8.h, top: 8.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
