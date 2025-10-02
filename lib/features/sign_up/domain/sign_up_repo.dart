import 'package:chatbox_app/core/errors/api_failure.dart';
import 'package:chatbox_app/features/sign_up/domain/params/sign_up_params.dart';
import 'package:dartz/dartz.dart';

abstract interface class SignUpRepo {
  Future<Either<ApiFailure, void>> signUp({required  SignUpParams signUpParams});
}
