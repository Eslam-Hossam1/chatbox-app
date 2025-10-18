import 'package:flutter/material.dart';

import '../../../features/onboarding/presentation/view/widgets/obsecure_text_form_field.dart';
import '../../theme/app_text_styles.dart';
import '../../theme/theme_colors_extension.dart';
import '../../utils/form_validators.dart';
import '../spacing/height_space.dart';

class PasswordSliverTextFormField extends StatelessWidget {
  const PasswordSliverTextFormField({
    super.key,
    this.title = 'Password',
    this.hint = 'Enter your password',
    required this.onSaved,
  });

  final String title;
  final String hint;
  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.bold14(context).copyWith(
              color: context.primaryColor,
            ),
          ),
          ObsecureTextFormField(
            hint: hint,
            onSaved: onSaved,
            validator: FormValidators.passwordTextFormFieldValidator,
          ),
          const HeightSpace(height: 12),
        ],
      ),
    );
  }
}
