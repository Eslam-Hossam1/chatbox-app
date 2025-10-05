import '../../../../../core/widgets/text_form_fields/email_sliver_text_form_field.dart';
import '../../manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'forgot_password_button_section.dart';
import 'forgot_password_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/app_padding.dart';
import '../../../../../core/widgets/spacing/sliver_height_space.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  _enableAutoValidation() {
    setState(() {
      autovalidateMode = AutovalidateMode.always;
    });
  }

  @override
  Widget build(BuildContext context) {
    final forgotPasswordCubit = context.read<ForgotPasswordCubit>();
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: AppPadding(
        child: CustomScrollView(
          slivers: [
            SliverHeightSpace(
              height: 40,
            ),
            ForgotPasswordHeader(),
            SliverHeightSpace(height: 60),
            EmailSliverTextFormField(
              onSaved: (value) => forgotPasswordCubit.email = value!,
            ),
            SliverHeightSpace(height: 40),
            ForgotPasswordButtonSection(
              formKey: _formKey,
              enableAutoValidation: _enableAutoValidation,
            )
          ],
        ),
      ),
    );
  }
}
