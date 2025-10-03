import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widget/text_form_fields/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SliverAuthTextFormField extends StatelessWidget {
  const SliverAuthTextFormField({
    super.key,
    required this.title,
    required this.hint,
    required this.onSaved,
    required this.validator,
  });
  final String title;
  final String hint;
  final void Function(String?) onSaved;
  final String? Function(String?) validator;
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
          CustomTextFormField(
            hintText: hint,
            onSaved: onSaved,
            validator: validator,
          )
        ],
      ),
    );
  }
}
