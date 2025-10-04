import '../../../../core/errors/api_failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/login_entity.dart';
import '../params/login_params.dart';
import '../repo/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase implements Usecase<ApiFailure, LoginEntity, LoginParams> {
  final LoginRepo _loginRepo;

  LoginUsecase({required LoginRepo loginRepo}) : _loginRepo = loginRepo;

  @override
  Future<Either<ApiFailure, LoginEntity>> call(LoginParams loginParams) {
    return _loginRepo.login(loginParams: loginParams);
  }
}
