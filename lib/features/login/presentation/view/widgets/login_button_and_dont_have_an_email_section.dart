import 'package:flutter/material.dart';

import '../../../../../../core/widgets/sliver_sticky_footer.dart';
import '../../../../../../core/widgets/spacing/height_space.dart';
import 'dont_have_an_email.dart';
import 'login_button_builder.dart';

class LoginButtonAndDontHaveAnEmailSection extends StatelessWidget {
  const LoginButtonAndDontHaveAnEmailSection({
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
        LoginButtonSection(
          formKey: formKey,
          enableAutoValidation: enableAutoValidation,
        ),
        HeightSpace(height: 16),
        DontHaveAnEmail(),
      ],
    );
  }
}
