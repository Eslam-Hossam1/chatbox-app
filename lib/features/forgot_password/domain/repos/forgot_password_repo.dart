import 'package:dartz/dartz.dart';

import '../../../../../core/errors/api_failure.dart';
import '../params/forgot_password_params.dart';

abstract interface class ForgotPasswordRepo {
  Future<Either<ApiFailure, void>> forgotPassword(
      {required ForgotPasswordParams forgotPasswordParams});
}
