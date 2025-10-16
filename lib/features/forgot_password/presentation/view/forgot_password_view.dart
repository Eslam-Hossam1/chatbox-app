import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/dialog_helper/dialog_helper.dart';
import '../../../../core/routing/routing_helper.dart';
import '../../../otp/data/models/auth_otp/forgot_password_otp_reason.dart';
import '../manager/forgot_password_cubit/forgot_password_cubit.dart';
import '../manager/forgot_password_cubit/forgot_password_state.dart';
import 'widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final forgotPasswordCubit = context.read<ForgotPasswordCubit>();
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ForgotPasswordSuccess) {
          RoutingHelper.pushOtp(
            context,
            otpReason: ForgotPasswordOtpReason(
              email: forgotPasswordCubit.email,
            ),
          );
        }
        if (state is ForgotPasswordFailure) {
          DialogHelper.showErrorDialog(
            context,
            errorMessage: state.errMessage,
          );
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: ForgotPasswordViewBody(),
        ),
      ),
    );
  }
}
