import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/utils/assets.dart';
import 'package:chatbox_app/core/utils/constants.dart';
import 'package:chatbox_app/core/widgets/colored_svg_picture.dart';
import 'package:chatbox_app/core/widgets/spacing/width_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendMessageSection extends StatelessWidget {
  const SendMessageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 15.h,
        bottom: 20.h,
        left: Constants.chatViewsPadding.w,
        right: Constants.chatViewsPadding.w,
      ),
      child: Row(
        children: [
          Expanded(
            child: Scrollbar(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 40.h,
                  maxHeight: 120.h,
                ),
                child: TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  cursorHeight: 20.h,
                  decoration: InputDecoration(
                    suffixIconConstraints: BoxConstraints(),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: ColoredSvgPicture(
                          assetImage: Assets.imagesSvgsSticker,
                          color: context.secondaryTextColor,
                        )),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                    hintStyle: AppTextStyles.medium12(context).copyWith(
                      color: context.secondaryTextColor,
                    ),
                    hintText: 'Write your message',
                    contentPadding: EdgeInsets.only(left: 12.h),
                    fillColor: context.formColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          WidthSpace(width: 12),
          CircleAvatar(
            backgroundColor: context.primaryColor,
            radius: 20.w,
            child: Center(
              child: ColoredSvgPicture(
                assetImage: Assets.imagesSvgsSend,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
