import 'package:chatbox_app/core/widget/sliver_sticky_footer.dart';
import 'package:chatbox_app/core/widget/spacing/height_space.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/sign_up_bottom_section/already_have_an_account.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/sign_up_bottom_section/sign_up_button/sign_up_button.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/sign_up_bottom_section/sign_up_button/sign_up_button_builder.dart';
import 'package:flutter/material.dart';

class SignUpButtonAndAlreadyHaveAccountSection extends StatelessWidget {
  const SignUpButtonAndAlreadyHaveAccountSection({
    super.key,
    required this.formKey,
    required this.enableAutoValidation,
  });
  final GlobalKey<FormState> formKey;
  final void Function() enableAutoValidation;

  @override
  Widget build(BuildContext context) {
    return SliverStickyFooter(
      bottomPadding: 20,
      children: [
        SignUpButtonBuilder(
          formKey: formKey,
          enableAutoValidation: enableAutoValidation,
        ),
        HeightSpace(height: 16),
        AlreadyHaveAnAccount(),
      ],
    );
  }
}
