import 'package:flutter/material.dart';

import '../../../../../core/routing/routing_helper.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/theme_colors_extension.dart';
import '../../../../../core/widgets/buttons/clickable_text.dart';

class ForgotPasswordClickableText extends StatelessWidget {
  const ForgotPasswordClickableText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.centerRight,
        child: ClickableText(
          text: 'Forgot password?',
          style: AppTextStyles.medium12(context).copyWith(
            color: context.primaryColor,
          ),
          onTap: () => RoutingHelper.pushForgotPassword(context),
        ),
      ),
    );
  }
}
