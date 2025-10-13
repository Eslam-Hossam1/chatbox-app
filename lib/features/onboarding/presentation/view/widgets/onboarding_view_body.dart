import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_padding.dart';
import '../../../../../core/widgets/sliver_sticky_footer.dart';
import '../../../../../core/widgets/spacing/sliver_height_space.dart';
import 'chat_box_svg.dart';
import 'connects_friends_text_section.dart';
import 'get_started_button.dart';
import 'our_app_is_perfect_text.dart';

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
