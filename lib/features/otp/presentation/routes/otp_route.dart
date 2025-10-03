import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:chatbox_app/features/otp/presentation/view/otp_view.dart';
import 'package:go_router/go_router.dart';

class OtpRoute {
  static GoRoute otp = GoRoute(
    path: RoutePaths.otp,
    builder: (context, state) => const OtpView(),
  );

  static List<GoRoute> routes = [
    otp,
  ];
}
