import 'routes_paths.dart';
import '../services/onboarding_perferences_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterRedirect {
  final OnboardingPreferncesService _onboardingPreferencesService;
  const RouterRedirect({
    required OnboardingPreferncesService onboardingPreferencesService,
  }) : _onboardingPreferencesService = onboardingPreferencesService;

  String? redirect(BuildContext context, GoRouterState state) {
    bool isAppJustOpenedNormally =
        state.matchedLocation == RoutePaths.initialRoute;

    if (isAppJustOpenedNormally) {
      return determineInitialView();
    } else {
      return null;
    }
  }

  String determineInitialView() {
    if (!_onboardingPreferencesService.isOnBoardingCompleted()) {
      return RoutePaths.onboarding;
    } else {
      //check if user is logged in or not
      //for now we will always return sign-up
      return RoutePaths.signUp;
    }
  }
}
