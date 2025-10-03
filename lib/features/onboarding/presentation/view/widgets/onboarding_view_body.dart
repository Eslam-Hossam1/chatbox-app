import 'package:chatbox_app/core/widgets/app_padding.dart';
import 'package:chatbox_app/core/widgets/spacing/sliver_height_space.dart';
import 'package:chatbox_app/core/widgets/sliver_sticky_footer.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/chat_box_svg.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/connects_friends_text_section.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/get_started_button.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/our_app_is_perfect_text.dart';
import 'package:flutter/material.dart';

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
          ChatBoxSvg(),
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
