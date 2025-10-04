import '../../manager/login_cubit/login_cubit.dart';

import '../../../../../../../core/widgets/buttons/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.enableAutoValidation,
    required this.formKey,
  });
  final GlobalKey<FormState> formKey;
  final void Function() enableAutoValidation;

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      width: double.infinity,
      text: 'Login',
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          context.read<LoginCubit>().login();
        } else {
          enableAutoValidation();
        }
      },
    );
  }
}
