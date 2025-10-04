import '../../../../../../../core/widgets/buttons/custom_loading_button.dart';
import '../../../../manager/sign_up_cubit/sign_up_cubit.dart';
import '../../../../manager/sign_up_cubit/sign_up_state.dart';
import 'sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButtonBuilder extends StatelessWidget {
  const SignUpButtonBuilder({
    super.key,
    required this.formKey,
    required this.enableAutoValidation,
  });
  final GlobalKey<FormState> formKey;
  final void Function() enableAutoValidation;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is SignUpLoading,
          child: state is SignUpLoading
              ? const CustomLoadingButton()
              : SignUpButton(
                  enableAutoValidation: enableAutoValidation,
                  formKey: formKey,
                ),
        );
      },
    );
  }
}
