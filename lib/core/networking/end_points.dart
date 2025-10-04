abstract class EndPoints {
  static const String baseUrl =
      "https://chatbox-production-561c.up.railway.app";
  static const String signUp = "/api/register";
  static const String login = "/api/login";
  static const String resetPassword = "/api/reset-password";
  static const String verifySignUpOtp = "/api/verify-otp";
  static const String verifyForgotPasswordOtp = "/api/forget-password-otp";
  static const String sendSignUpOtp = _sendOtp;
  static const String sendForgotPassowrdOtp = _sendOtp;
  static const String _sendOtp = "/api/send-otp";
} 
