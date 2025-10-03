import 'package:chatbox_app/core/services/auth_credentials_manager/auth_credentials_manager.dart';
import 'package:chatbox_app/core/di/service_locator.dart';
import 'package:chatbox_app/core/networking/end_points.dart';
import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:chatbox_app/features/otp/data/models/auth_otp/sign_up_otp_result.dart';
import 'package:chatbox_app/features/otp/domain/entities/otp_reason.dart';

class SignUpOtpReason implements OtpReason<SignUpOtpResult> {
  SignUpOtpReason({
    required this.email,
  });

  @override
  final String email;

  @override
  final String sendOtpEndpoint = EndPoints.sendSignUpOtp;

  @override
  final String verifyOtpEndpoint = EndPoints.verifyAuthOtp;

  @override
  final String toGoViewPath = RoutePaths.home;

  @override
  final bool sendOtpOnOpening = true;

  @override
  SignUpOtpResult resultBuilder(Map<String, dynamic> json) =>
      SignUpOtpResult.fromJson(json);

  @override
  Future<void> onSuccess(SignUpOtpResult otpResult) async {
    await getIt<AuthCredentialsManager>().storeAccessToken(
      otpResult.accessToken,
      //  refreshToken: otpResult.refreshToken,
    );
  }
}
