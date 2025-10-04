import '../../manager/login_cubit/login_cubit.dart';
import '../../manager/login_cubit/login_state.dart';

import '../../../../../../../core/widgets/buttons/custom_loading_button.dart';
import 'login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonSection extends StatelessWidget {
  const LoginButtonSection({
    super.key,
    required this.formKey,
    required this.enableAutoValidation,
  });
  final GlobalKey<FormState> formKey;
  final void Function() enableAutoValidation;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is LoginLoading,
          child: state is LoginLoading
              ? const CustomLoadingButton()
              : LoginButton(
                  enableAutoValidation: enableAutoValidation,
                  formKey: formKey,
                ),
        );
      },
    );
  }
}
