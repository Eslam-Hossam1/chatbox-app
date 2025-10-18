import '../../../../../core/widgets/sliver_auth_header_text.dart';
import 'package:flutter/material.dart';

class ForgotPasswordHeader extends StatelessWidget {
  const ForgotPasswordHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SliverAuthHeaderText(
        title: 'Forgot Password',
        subtitle:
            'Enter your email address and we\'ll send you\nverification code to reset your password.',
      ),
    );
  }
}
