import 'package:chatbox_app/core/widget/app_padding.dart';
import 'package:chatbox_app/core/widget/sliver_auth_header_text.dart';
import 'package:chatbox_app/core/widget/spacing/sliver_height_space.dart';
import 'package:chatbox_app/features/sign-up/presentation/view/widgets/sign_up_button_and_already_have_account_section.dart';
import 'package:chatbox_app/features/sign-up/presentation/view/widgets/sign_up_text_form_fields_section.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      child: CustomScrollView(
        slivers: [
          SliverHeightSpace(
            height: 40,
          ),
          SliverToBoxAdapter(
            child: SliverAuthHeaderText(
              title: 'Welcome to Chatbox',
              subtitle:
                  'Get chatting with friends and family today\nby signing up for our chat app!',
            ),
          ),
          SliverHeightSpace(height: 60),
          SignUpTextFormFieldsSection(),
          SliverHeightSpace(height: 40),
          SignUpButtonAndAlreadyHaveAccountSection()
        ],
      ),
    );
  }
}
