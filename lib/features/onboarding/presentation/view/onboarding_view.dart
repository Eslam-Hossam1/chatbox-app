import 'package:flutter/material.dart';

import 'widgets/onboarding_gradients.dart';
import 'widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            ...onBoardingGradients,
            SafeArea(
              child: OnboardingViewBody(),
            )
          ],
        ),
      ),
    );
  }
}
