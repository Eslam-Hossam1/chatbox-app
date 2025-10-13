import '../../../../core/errors/api_failure.dart';
import '../params/sign_up_params.dart';
import 'package:dartz/dartz.dart';

abstract interface class SignUpRepo {
  Future<Either<ApiFailure, void>> signUp({required SignUpParams signUpParams});
}
