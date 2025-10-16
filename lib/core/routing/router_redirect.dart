import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../services/auth_credentials_manager/auth_credentials_manager.dart';
import '../services/onboarding_perferences_service.dart';
import 'routes_paths.dart';

class RouterRedirect {
  final OnboardingPreferncesService _onboardingPreferencesService;
  final AuthCredentialsManager _authCredentialsHelper;
  const RouterRedirect({
    required OnboardingPreferncesService onboardingPreferencesService,
    required AuthCredentialsManager authCredentialsHelper,
  }) : _onboardingPreferencesService = onboardingPreferencesService,
       _authCredentialsHelper = authCredentialsHelper;

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
          return _authCredentialsHelper.userIsAuthenticated()
          ? RoutePaths.home
          : RoutePaths.login;
    }
  }
}
