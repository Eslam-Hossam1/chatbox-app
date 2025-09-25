import 'package:chatbox_app/core/widget/app_padding.dart';
import 'package:chatbox_app/core/widget/sliver_auth_header_text.dart';
import 'package:chatbox_app/core/widget/spacing/sliver_height_space.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      child: CustomScrollView(
        slivers: [
          SliverHeightSpace(
            height: 80,
          ),
          SliverToBoxAdapter(
            child: SliverAuthHeaderText(
              title: 'Welcome to ChatBox',
              subtitle:
                  'Get chatting with friends and family today\nby signing up for our chat app!',
            ),
          ),
        ],
      ),
    );
  }
}
