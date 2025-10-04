import '../../../../../../../core/widgets/buttons/custom_text_button.dart';
import '../../../../manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
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
      text: 'Sign Up',
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          context.read<SignUpCubit>().signUp();
        } else {
          enableAutoValidation();
        }
      },
    );
  }
}
