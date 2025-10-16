import 'package:dartz/dartz.dart';

import '../../../../core/errors/api_failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../params/forgot_password_params.dart';
import '../repos/forgot_password_repo.dart';

class ForgotPasswordUsecase
    implements Usecase<ApiFailure, void, ForgotPasswordParams> {
  final ForgotPasswordRepo _forgotPasswordRepo;

  ForgotPasswordUsecase({required ForgotPasswordRepo forgotPasswordRepo})
      : _forgotPasswordRepo = forgotPasswordRepo;

  @override
  Future<Either<ApiFailure, void>> call(
      ForgotPasswordParams forgotPasswordParams) {
    return _forgotPasswordRepo.forgotPassword(
        forgotPasswordParams: forgotPasswordParams);
  }
}
