import '../../../../../core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ConnectsFriendsTextSection extends StatelessWidget {
  const ConnectsFriendsTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Connect\nfriends',
            style: AppTextStyles.regular68(context, upperLimitRatio: 1.75)
                .copyWith(
              color: Colors.white,
              height: 78 / 68,
            ),
          ),
          Text(
            'easily &\nquickly',
            style:
                AppTextStyles.bold68(context, upperLimitRatio: 1.75).copyWith(
              color: Colors.white,
              height: 78 / 68,
            ),
          ),
        ],
      ),
    );
  }
}
