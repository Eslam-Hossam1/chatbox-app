import 'package:chatbox_app/features/forgot_password/domain/params/forgot_password_params.dart';

import '../../../../../core/errors/api_failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class ForgotPasswordRepo {
  Future<Either<ApiFailure, void>> forgotPassword(
      {required ForgotPasswordParams forgotPasswordParams});
}
