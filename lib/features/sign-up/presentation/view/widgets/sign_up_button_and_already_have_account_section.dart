
import 'package:chatbox_app/core/widget/clickable_text.dart';
import 'package:chatbox_app/core/widget/custom_text_button.dart';
import 'package:chatbox_app/core/widget/sliver_sticky_footer.dart';
import 'package:chatbox_app/core/widget/spacing/height_space.dart';
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
        CustomTextButton(
          width: double.infinity,
          text: 'Sign Up',
          onPressed: () {},
        ),
        HeightSpace(height: 16),
        ClickableText(text: 'Already have an account? Login'),
      ],
    );
  }
}
