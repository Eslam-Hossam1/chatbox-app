import 'package:chatbox_app/core/widget/sliver_auth_password_text_form_field.dart';
import 'package:chatbox_app/core/widget/sliver_auth_text_form_field.dart';
import 'package:chatbox_app/core/widget/spacing/sliver_height_space.dart';
import 'package:flutter/material.dart';

class SignUpTextFormFieldsSection extends StatelessWidget {
  const SignUpTextFormFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double heightSpace = 30;
    return SliverMainAxisGroup(
      slivers: [
        SliverAuthTextFormField(
          title: 'Display name',
          hint: 'Display name, e.g. John Doe',
        ),
        SliverHeightSpace(height: heightSpace),
        SliverAuthTextFormField(
          title: 'Username',
          hint: 'Name, unique to you',
        ),
        SliverHeightSpace(height: heightSpace),
        SliverAuthTextFormField(
          title: 'Email',
          hint: 'Email, e.g. example@gmail.com',
        ),
        SliverHeightSpace(height: heightSpace),
        SliverAuthPasswordTextFormField(
          title: 'Password',
          hint: 'Password',
          passwordStandards: 'at least 6 characters, one number',
        ),
        SliverHeightSpace(height: heightSpace),
      ],
    );
  }
}
