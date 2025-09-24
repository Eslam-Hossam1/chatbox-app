import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:chatbox_app/core/services/onboarding_cache_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterRedirect {
  final OnBoardingCacheService _onBoardingCacheService;
  const RouterRedirect({
    required OnBoardingCacheService onBoardingCacheService,
  }) : _onBoardingCacheService = onBoardingCacheService;

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
    if (!_onBoardingCacheService.isOnBoardingCompleted()) {
      return RoutePaths.onboarding;
    } else {
      //check if user is logged in or not
      //for now we will always return sign-up
      return RoutePaths.signUp;
    }
  }
}
