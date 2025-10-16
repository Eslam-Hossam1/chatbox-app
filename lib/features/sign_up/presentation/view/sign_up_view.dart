import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/dialog_helper/dialog_helper.dart';
import '../../../../core/routing/routing_helper.dart';
import '../../../otp/data/models/auth_otp/sign_up_otp_reason.dart';
import '../manager/sign_up_cubit/sign_up_cubit.dart';
import '../manager/sign_up_cubit/sign_up_state.dart';
import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpCubit = context.read<SignUpCubit>();
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          RoutingHelper.pushOtp(
            context,
            otpReason: SignUpOtpReason(
              email: signUpCubit.email,
            ),
          );
        }
        if (state is SignUpFailure) {
          DialogHelper.showErrorDialog(
            context,
            errorMessage: state.errMessage,
          );
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: SignUpViewBody(),
        ),
      ),
    );
  }
}
