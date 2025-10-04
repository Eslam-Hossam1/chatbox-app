import 'otp_result.dart';

abstract interface class OtpReason<T extends OtpResult> {
  final String verifyOtpEndpoint;
  final String sendOtpEndpoint;
  final String email;
  final String toGoViewPath;
  final bool sendOtpOnOpening;
  T resultBuilder(Map<String, dynamic> json);
  Future<void> onSuccess(T otpResult);

  OtpReason({
    required this.toGoViewPath,
    required this.email,
    required this.verifyOtpEndpoint,
    required this.sendOtpEndpoint,
    required this.sendOtpOnOpening,
  });
}
