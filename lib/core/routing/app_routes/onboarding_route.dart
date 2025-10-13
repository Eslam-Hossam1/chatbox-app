import '../routes_paths.dart';
import '../../../features/onboarding/presentation/view/onboarding_view.dart';
import 'package:go_router/go_router.dart';

class OnboardingRoute {
  static GoRoute onboarding = GoRoute(
    path: RoutePaths.onboarding,
    builder: (context, state) => const OnboardingView(),
  );

  static List<GoRoute> routes = [
    onboarding,
  ];
}
