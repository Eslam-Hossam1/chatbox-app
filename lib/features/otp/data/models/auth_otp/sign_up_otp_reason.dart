import '../../../../../core/services/auth_credentials_manager/auth_credentials_manager.dart';
import '../../../../../core/di/service_locator.dart';
import '../../../../../core/networking/end_points.dart';
import '../../../../../core/routing/routes_paths.dart';
import 'sign_up_otp_result.dart';
import '../../../domain/entities/otp_reason.dart';

class SignUpOtpReason implements OtpReason<SignUpOtpResult> {
  SignUpOtpReason({
    required this.email,
  });

  @override
  final String email;

  @override
  final String sendOtpEndpoint = EndPoints.sendSignUpOtp;

  @override
  final String verifyOtpEndpoint = EndPoints.verifySignUpOtp;

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
