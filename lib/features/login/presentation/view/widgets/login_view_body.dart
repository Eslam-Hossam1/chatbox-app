import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_padding.dart';
import '../../../../../core/widgets/spacing/sliver_height_space.dart';
import 'login_button_and_dont_have_an_email_section.dart';
import 'login_header.dart';
import 'login_text_form_fields_section.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
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
            const SliverHeightSpace(
              height: 40,
            ),
            const LoginHeader(),
            const SliverHeightSpace(height: 60),
            const LoginTextFormFieldsSection(),
            const SliverHeightSpace(height: 40),
            LoginButtonAndDontHaveAnEmailSection(
              formKey: _formKey,
              enableAutoValidation: _enableAutoValidation,
            )
          ],
        ),
      ),
    );
  }
}
