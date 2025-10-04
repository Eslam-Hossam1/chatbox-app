import 'auth_routes.dart';
import 'onboarding_route.dart';
import 'otp_route.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static List<RouteBase> routes = [
    ...OnboardingRoute.routes,
    ...AuthRoutes.routes,
    ...OtpRoute.routes,
  ];
}
