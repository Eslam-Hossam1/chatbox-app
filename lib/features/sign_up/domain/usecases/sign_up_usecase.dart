import '../../../../core/errors/api_failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../params/sign_up_params.dart';
import '../repos/sign_up_repo.dart';
import 'package:dartz/dartz.dart';

class SignUpUsecase implements Usecase<ApiFailure, void, SignUpParams> {
  final SignUpRepo _signUpRepo;

  SignUpUsecase({required SignUpRepo signUpRepo}) : _signUpRepo = signUpRepo;

  @override
  Future<Either<ApiFailure, void>> call(SignUpParams signUpParams) {
    return _signUpRepo.signUp(signUpParams: signUpParams);
  }
}
