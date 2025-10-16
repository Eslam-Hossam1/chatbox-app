import 'package:dartz/dartz.dart';

import '../../../../../core/errors/api_failure.dart';
import '../params/reset_password_params.dart';

abstract interface class ResetPasswordRepo {
  Future<Either<ApiFailure, void>> resetPassword(
      {required ResetPasswordParams resetPasswordParams});
}
