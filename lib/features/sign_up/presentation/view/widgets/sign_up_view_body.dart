import 'package:chatbox_app/core/widgets/app_padding.dart';
import 'package:chatbox_app/core/widgets/spacing/sliver_height_space.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/sign_up_bottom_section/sign_up_button_and_already_have_account_section.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/sign_up_header.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/sign_up_text_form_fields_section.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  _enableAutoValidation() {
    setState(() {
      autovalidateMode = AutovalidateMode.always;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: AppPadding(
        child: CustomScrollView(
          slivers: [
            SliverHeightSpace(
              height: 40,
            ),
            SignUpHeader(),
            SliverHeightSpace(height: 60),
            SignUpTextFormFieldsSection(),
            SliverHeightSpace(height: 40),
            SignUpButtonAndAlreadyHaveAccountSection(
              formKey: _formKey,
              enableAutoValidation: _enableAutoValidation,
            )
          ],
        ),
      ),
    );
  }
}
