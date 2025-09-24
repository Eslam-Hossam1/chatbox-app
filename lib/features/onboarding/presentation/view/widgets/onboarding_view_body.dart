import 'package:chatbox_app/core/utils/assets.dart';
import 'package:chatbox_app/core/widget/app_padding.dart';
import 'package:chatbox_app/core/widget/sliver_height_space.dart';
import 'package:chatbox_app/core/widget/sliver_sticky_footer.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/connects_friends_text_section.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/get_started_button.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/our_app_is_perfect_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      child: CustomScrollView(
        slivers: [
          SliverHeightSpace(
            height: 20,
          ),
          SliverToBoxAdapter(
            child: SvgPicture.asset(
              Assets.imagesSvgsOnboardingChatbox,
              width: 100.w,
            ),
          ),
          SliverHeightSpace(
            height: 50,
          ),
          ConnectsFriendsTextSection(),
          SliverHeightSpace(
            height: 16,
          ),
          OurAppIsPerfectText(),
          SliverHeightSpace(
            height: 40,
          ),
          SliverStickyFooter(
            children: [
              GetStartedButton(),
            ],
          )
        ],
      ),
    );
  }
}
