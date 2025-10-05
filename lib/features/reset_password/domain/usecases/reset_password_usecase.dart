import '../../../../core/errors/api_failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../params/reset_password_params.dart';
import '../repos/reset_password_repo.dart';
import 'package:dartz/dartz.dart';

class ResetPasswordUsecase
    implements Usecase<ApiFailure, void, ResetPasswordParams> {
  final ResetPasswordRepo _resetPasswordRepo;

  ResetPasswordUsecase({required ResetPasswordRepo resetPasswordRepo})
      : _resetPasswordRepo = resetPasswordRepo;

  @override
  Future<Either<ApiFailure, void>> call(
      ResetPasswordParams resetPasswordParams) {
    return _resetPasswordRepo.resetPassword(
        resetPasswordParams: resetPasswordParams);
  }
}
