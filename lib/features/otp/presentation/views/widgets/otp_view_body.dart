import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_padding.dart';
import '../../../../../core/widgets/sliver_sticky_footer.dart';
import '../../../../../core/widgets/spacing/height_space.dart';
import '../../../../../core/widgets/spacing/sliver_height_space.dart';
import 'enter_otp_section.dart';
import 'resend_code/resend_button_builder.dart';
import 'verify_button.dart';

class OtpViewBody extends StatefulWidget {
  const OtpViewBody({super.key});

  @override
  State<OtpViewBody> createState() => _OtpViewBodyState();
}

class _OtpViewBodyState extends State<OtpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  void enableAutoValidation() {
    setState(() {
      autovalidateMode = AutovalidateMode.always;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: AppPadding(
        child: CustomScrollView(
          slivers: [
            const SliverHeightSpace(
              height: 100,
            ),
            const EnterOtpSection(),
            SliverStickyFooter(
              children: [
                VerifyButton(
                  enableAutoValidation: enableAutoValidation,
                  formKey: formKey,
                ),
                const HeightSpace(
                  height: 16,
                ),
                const ResendButtonBuilder(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
