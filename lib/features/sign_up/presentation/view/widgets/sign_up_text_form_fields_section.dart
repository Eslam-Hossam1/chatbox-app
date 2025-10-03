import 'package:chatbox_app/core/widgets/spacing/sliver_height_space.dart';
import 'package:chatbox_app/core/widgets/text_form_fields/display_name_sliver_text_form_field.dart';
import 'package:chatbox_app/core/widgets/text_form_fields/email_sliver_text_form_field.dart';
import 'package:chatbox_app/core/widgets/text_form_fields/password_sliver_text_form_field.dart';
import 'package:chatbox_app/core/widgets/text_form_fields/username_sliver_text_form_field.dart';
import 'package:chatbox_app/features/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpTextFormFieldsSection extends StatelessWidget {
  const SignUpTextFormFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double heightSpace = 30;
    final signUpCubit = context.read<SignUpCubit>();
    return SliverMainAxisGroup(
      slivers: [
        DisplayNameSliverTextFormField(
          onSaved: (value) => signUpCubit.displayName = value ?? '',
        ),
        SliverHeightSpace(height: heightSpace),
        UsernameSliverTextFormField(
          onSaved: (value) => signUpCubit.username = value ?? '',
        ),
        SliverHeightSpace(height: heightSpace),
        EmailSliverTextFormField(
          onSaved: (value) => signUpCubit.email = value ?? '',
        ),
        SliverHeightSpace(height: heightSpace),
        PasswordSliverTextFormField(
          onSaved: (value) => signUpCubit.password = value ?? '',
          hint: 'At least 6 characters',
        ),
        SliverHeightSpace(height: heightSpace),
      ],
    );
  }
}
