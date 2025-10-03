import 'package:chatbox_app/core/di/service_locator.dart';
import 'package:chatbox_app/core/routing/app_routes/all_routs.dart';
import 'package:chatbox_app/core/routing/router_redirect.dart';
import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:chatbox_app/core/services/onboarding_perferences_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static final routerRedirect = RouterRedirect(
    onboardingPreferencesService: getIt<OnboardingPreferncesService>(),
  );

  static final router = GoRouter(
    initialLocation: RoutePaths.initialRoute,
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    redirect: routerRedirect.redirect,
    routes: AppRoutes.routes,
  );
}
