import '../models/forgot_password_request_body.dart';

abstract interface class ForgotPasswordRemoteDataSource {
  Future<void> forgotPassword(
      {required ForgotPasswordRequestBody forgotPasswordRequestBody});
}
