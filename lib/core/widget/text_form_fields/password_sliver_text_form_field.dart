import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widget/spacing/height_space.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/obsecure_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordSliverTextFormField extends StatelessWidget {
  const PasswordSliverTextFormField({
    super.key,
    this.title = 'Password',
    this.hint = 'Enter your password',
    required this.onSaved,
    this.passwordStandards,
  });

  final String title;
  final String hint;
  final String? passwordStandards;
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
          ),
          HeightSpace(height: 12),
          passwordStandards == null
              ? SizedBox.shrink()
              : Text(
                  passwordStandards!,
                  style: AppTextStyles.regular12(context).copyWith(
                    color: context.secondaryTextColor,
                  ),
                ),
        ],
      ),
    );
  }
}
