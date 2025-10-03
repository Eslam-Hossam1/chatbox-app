import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/widgets/app_padding.dart';
import 'package:chatbox_app/core/widgets/sliver_sticky_footer.dart';
import 'package:chatbox_app/core/widgets/spacing/height_space.dart';
import 'package:chatbox_app/core/widgets/spacing/sliver_height_space.dart';
import 'package:flutter/material.dart';
import 'package:chatbox_app/features/otp/presentation/views/widgets/enter_otp_section.dart';
import 'package:chatbox_app/features/otp/presentation/views/widgets/resend_code/resend_button_builder.dart';
import 'package:chatbox_app/features/otp/presentation/views/widgets/verify_button.dart';

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
            SliverHeightSpace(
              height: 100,
            ),
            
            EnterOtpSection(),
            SliverStickyFooter(
              children: [
                VerifyButton(
                  enableAutoValidation: enableAutoValidation,
                  formKey: formKey,
                ),
                HeightSpace(
                  height: 16,
                ),
                ResendButtonBuilder(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
