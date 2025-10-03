import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:chatbox_app/features/otp/domain/entities/otp_reason.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

abstract class RoutingHelper {
  static pushOtp(BuildContext context, {required OtpReason otpReason}) {
    context.push(RoutePaths.otp, extra: otpReason);
  }
}
