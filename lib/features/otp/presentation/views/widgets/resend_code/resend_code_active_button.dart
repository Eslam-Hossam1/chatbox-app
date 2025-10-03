import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/features/otp/presentation/manager/otp_cubit/otp_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ResendCodeActiveButton extends StatelessWidget {
  const ResendCodeActiveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<OtpCubit>().sendVerificationCode();
      },
      child: Text(
        'Resend code via email',
        style: AppTextStyles.medium14(context).copyWith(
          color: context.primaryColor,
        ),
      ),
    );
  }
}
