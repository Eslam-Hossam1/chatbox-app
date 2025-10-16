import 'package:flutter/material.dart';

import '../../../../../core/widgets/sliver_auth_header_text.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SliverAuthHeaderText(
        title: 'Welcome to Chatbox',
        subtitle:
            'Get chatting with friends and family today\nby signing up for our chat app!',
      ),
    );
  }
}
