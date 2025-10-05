import '../models/reset_password_request_body.dart';

abstract interface class ResetPasswordRemoteDataSource {
  Future<void> resetPassword(
      {required ResetPasswordRequestBody resetPasswordRequestBody});
}
