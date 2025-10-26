import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/padding/auth_views_padding.dart';
import '../../../../../core/widgets/spacing/sliver_height_space.dart';
import '../../../../../core/widgets/text_form_fields/password_sliver_text_form_field.dart';
import '../../manager/reset_password_cubit/reset_password_cubit.dart';
import 'reset_password_button_section.dart';
import 'reset_password_header.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  _enableAutoValidation() {
    setState(() {
      autovalidateMode = AutovalidateMode.always;
    });
  }

  @override
  Widget build(BuildContext context) {
    final resetPasswordCubit = context.read<ResetPasswordCubit>();
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: AuthViewsPadding(
        child: CustomScrollView(
          slivers: [
            const SliverHeightSpace(
              height: 40,
            ),
            const ResetPasswordHeader(),
            const SliverHeightSpace(height: 60),
            PasswordSliverTextFormField(
              onSaved: (value) => resetPasswordCubit.newPassword = value!,
              hint: 'Enter your new strong password',
            ),
            const SliverHeightSpace(height: 40),
            ResetPasswordButtonSection(
              formKey: _formKey,
              enableAutoValidation: _enableAutoValidation,
            )
          ],
        ),
      ),
    );
  }
}
