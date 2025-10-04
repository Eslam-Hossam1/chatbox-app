import 'routes_paths.dart';
import '../../features/otp/domain/entities/otp_reason.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

abstract class RoutingHelper {
  static pushOtp(BuildContext context, {required OtpReason otpReason}) {
    context.push(RoutePaths.otp, extra: otpReason);
  }
}
