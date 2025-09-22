import 'package:chatbox_app/core/routing/app_routes/all_routs.dart';
import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static final router = GoRouter(
    initialLocation: RoutePaths.initialRoute,
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: AppRoutes.routes,
  );
}
