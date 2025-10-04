import '../../../../../core/networking/api_keys.dart';
import '../../../domain/entities/otp_result.dart';

class SignUpOtpResult implements OtpResult {
  final String accessToken;
//  final String refreshToken;

  const SignUpOtpResult({
    required this.accessToken,
//    required this.refreshToken,
  });
  factory SignUpOtpResult.fromJson(Map<String, dynamic> json) {
    return SignUpOtpResult(
      accessToken: json[ApiKeys.data][ApiKeys.accessToken],
  //    refreshToken: json[ApiKeys.data][ApiKeys.refreshToken],
    );
  }
}
