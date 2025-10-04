import '../../../../../core/di/service_locator.dart';
import '../../../../../core/routing/routes_paths.dart';
import '../../../../../core/services/onboarding_perferences_service.dart';
import '../../../../../core/widgets/buttons/custom_gradient_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return CustomGradientTextButton(
      onTap: () async {
        getIt<OnboardingPreferncesService>().setOnBoardingCompletedToTrue();
        context.go(RoutePaths.signUp);
      },
      buttontext: 'Get Started',
    );
  }
}
