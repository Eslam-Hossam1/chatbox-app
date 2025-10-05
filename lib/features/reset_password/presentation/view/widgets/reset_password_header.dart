import '../../../../../core/widgets/sliver_auth_header_text.dart';
import 'package:flutter/material.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SliverAuthHeaderText(
        title: 'Reset Password',
        subtitle:
            'Enter your new password',
      ),
    );
  }
}
