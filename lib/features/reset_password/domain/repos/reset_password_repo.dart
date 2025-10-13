import '../params/reset_password_params.dart';

import '../../../../../core/errors/api_failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class ResetPasswordRepo {
  Future<Either<ApiFailure, void>> resetPassword(
      {required ResetPasswordParams resetPasswordParams});
}
