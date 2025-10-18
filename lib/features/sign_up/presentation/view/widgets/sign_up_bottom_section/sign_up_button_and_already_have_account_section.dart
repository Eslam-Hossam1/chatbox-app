import '../../../../../../core/widgets/sliver_sticky_footer.dart';
import '../../../../../../core/widgets/spacing/height_space.dart';
import 'already_have_an_account.dart';
import 'sign_up_button/sign_up_button_builder.dart';
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
        const HeightSpace(height: 16),
        const AlreadyHaveAnAccount(),
      ],
    );
  }
}
