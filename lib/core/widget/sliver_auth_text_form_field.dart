import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SliverAuthTextFormField extends StatelessWidget {
  const SliverAuthTextFormField({
    super.key,
    required this.title,
    required this.hint,
  });
  final String title;
  final String hint;
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
          )
        ],
      ),
    );
  }
}
