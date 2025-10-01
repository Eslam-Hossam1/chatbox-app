import 'package:chatbox_app/core/widget/sliver_sticky_footer.dart';
import 'package:chatbox_app/core/widget/spacing/height_space.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/already_have_an_account.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class SignUpButtonAndAlreadyHaveAccountSection extends StatelessWidget {
  const SignUpButtonAndAlreadyHaveAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverStickyFooter(
      bottomPadding: 20,
      children: [
        SignUpButton(),
        HeightSpace(height: 16),
        AlreadyHaveAnAccount(),
      ],
    );
  }
}
