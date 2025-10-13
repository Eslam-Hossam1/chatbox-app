import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../di/service_locator.dart';
import '../services/onboarding_perferences_service.dart';
import 'app_routes/all_routs.dart';
import 'router_redirect.dart';
import 'routes_paths.dart';

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
