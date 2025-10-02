import 'package:chatbox_app/core/errors/api_failure.dart';
import 'package:chatbox_app/core/usecases/usecase.dart';
import 'package:chatbox_app/features/sign_up/domain/params/sign_up_params.dart';
import 'package:chatbox_app/features/sign_up/domain/sign_up_repo.dart';
import 'package:dartz/dartz.dart';

class SignUpUsecase implements Usecase<ApiFailure, void, SignUpParams> {
  final SignUpRepo _signUpRepo;

  SignUpUsecase(this._signUpRepo);

  @override
  Future<Either<ApiFailure, void>> call(SignUpParams params) {
    return _signUpRepo.signUp(params);
  }
}
