import '../../../../../core/widgets/spacing/sliver_height_space.dart';
import '../../../../../core/widgets/text_form_fields/email_sliver_text_form_field.dart';
import '../../../../../core/widgets/text_form_fields/password_sliver_text_form_field.dart';
import '../../manager/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginTextFormFieldsSection extends StatelessWidget {
  const LoginTextFormFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double heightSpace = 30;
    final loginCubit = context.read<LoginCubit>();
    return SliverMainAxisGroup(
      slivers: [
        EmailSliverTextFormField(
          onSaved: (value) => loginCubit.email = value!,
        ),
        SliverHeightSpace(height: heightSpace),
        PasswordSliverTextFormField(
          onSaved: (value) => loginCubit.password = value!,
          hint: 'Enter your password',
        ),
      ],
    );
  }
}
