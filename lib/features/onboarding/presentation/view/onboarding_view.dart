import 'package:chatbox_app/features/onboarding/presentation/view/widgets/onboarding_gradients.dart';
import 'package:chatbox_app/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

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
