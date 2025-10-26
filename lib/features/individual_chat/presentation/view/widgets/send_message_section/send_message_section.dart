import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/utils/assets.dart';
import 'package:chatbox_app/core/utils/constants.dart';
import 'package:chatbox_app/core/widgets/colored_svg_picture.dart';
import 'package:chatbox_app/core/widgets/spacing/width_space.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/send_message_section/send_and_record_buttons_switcher.dart';
import 'package:chatbox_app/features/individual_chat/presentation/view/widgets/send_message_section/send_message_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chatbox_app/features/individual_chat/presentation/manager/chat_input_cubit/chat_input_cubit.dart';

class SendMessageSection extends StatelessWidget {
  const SendMessageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatInputCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          top: 15.h,
          bottom: 20.h,
          left: Constants.chatViewsPadding.w,
          right: Constants.chatViewsPadding.w,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 40.h,
                  maxHeight: 120.h,
                ),
                decoration: BoxDecoration(
                  color: context.formColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: ColoredSvgPicture(
                        assetImage: Assets.imagesSvgsSticker,
                        color: context.secondaryTextColor,
                      ),
                    ),
                    Expanded(
                      child: SendMessageTextField(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: ColoredSvgPicture(
                        assetImage: Assets.imagesSvgsAttachment,
                        color: context.secondaryTextColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: ColoredSvgPicture(
                        assetImage: Assets.imagesSvgsCamera,
                        color: context.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            WidthSpace(width: 12),
            SendAndRecordButtonsSwitcher(),
          ],
        ),
      ),
    );
  }
}
