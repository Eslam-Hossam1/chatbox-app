import 'package:chatbox_app/features/otp/presentation/views/widgets/resend_code/resend_button_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chatbox_app/features/otp/presentation/manager/otp_cubit/otp_cubit.dart';
import 'package:chatbox_app/features/otp/presentation/views/widgets/resend_code/resend_code_active_button.dart';
import 'package:chatbox_app/features/otp/presentation/views/widgets/resend_code/resend_code_with_timer.dart';

class ResendButtonBuilder extends StatelessWidget {
  const ResendButtonBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpCubit, OtpState>(
      buildWhen: (previous, current) =>
          current is OtpInitial ||
          current is OtpShowResendButton ||
          current is ReSendOtpSuccess,
      builder: (context, state) {
       if(state is OtpInitial){
        return ResendButtonPlaceholder();
       }else if (state is OtpShowResendButton) {
          return ResendCodeActiveButton();
        } else {
          return ResendCodeWithTimer();
        }
      },
    );
  }
}
