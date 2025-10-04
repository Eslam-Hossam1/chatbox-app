import '../../../../../core/widgets/sliver_auth_header_text.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SliverAuthHeaderText(
        title: 'Welcome to Chatbox',
        subtitle:
            'Get chatting with friends and family today\nby signing in to your account!',
      ),
    );
  }
}
