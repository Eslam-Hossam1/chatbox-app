import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/theme_colors_extension.dart';
import '../../../../../core/widgets/spacing/height_space.dart';
import '../../../../../core/widgets/text_form_fields/custom_pin_code_field.dart';
import '../../manager/otp_cubit/otp_cubit.dart';

class EnterOtpSection extends StatelessWidget {
  const EnterOtpSection({super.key});

  @override
  Widget build(BuildContext context) {
    final otpCubit = context.read<OtpCubit>();
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Check your email',
            style: AppTextStyles.bold22(context),
          ),
          const HeightSpace(
            height: 20,
          ),
          Text(
            'Please enter verification code sent to',
            style: AppTextStyles.regular16(context).copyWith(
              color: context.mainTextColor,
            ),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'your email: ',
                style: AppTextStyles.regular16(context).copyWith(
                  color: context.mainTextColor,
                ),
              ),
              TextSpan(
                text: otpCubit.otpReason.email,
                style: AppTextStyles.regular14(context).copyWith(
                  color: context.mainTextColor,
                ),
              )
            ]),
          ),
          const HeightSpace(height: 32),
          CustomPinCodeField(
            onSaved: (pinCode) {
              otpCubit.pinCode = pinCode!;
            },
          ),
        ],
      ),
    );
  }
}
