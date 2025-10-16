import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/dialog_helper/dialog_helper.dart';
import '../../../../core/routing/routes_paths.dart';
import '../manager/reset_password_cubit/reset_password_cubit.dart';
import '../manager/reset_password_cubit/reset_password_state.dart';
import 'widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccess) {
          // Show success message and navigate to login
          DialogHelper.showSuccessDialog(
            context,
            title: 'Password Reset Successful',
            message: 'Your password has been reset successfully.',
          );
          context.go(RoutePaths.login);
        }
        if (state is ResetPasswordFailure) {
          DialogHelper.showErrorDialog(
            context,
            errorMessage: state.errMessage,
          );
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: ResetPasswordViewBody(),
        ),
      ),
    );
  }
}
