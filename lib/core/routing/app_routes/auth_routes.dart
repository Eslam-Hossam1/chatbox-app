import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/sign_up_view.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static GoRoute signUp = GoRoute(
    path: RoutePaths.signUp,
    builder: (context, state) => SignUpView(),
  );
  static List<GoRoute> routes = [
    signUp,
  ];
}
