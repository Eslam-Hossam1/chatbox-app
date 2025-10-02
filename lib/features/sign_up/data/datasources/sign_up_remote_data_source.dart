import 'package:chatbox_app/core/errors/api_failure.dart';
import 'package:chatbox_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:dartz/dartz.dart';

abstract interface class SignUpRemoteDataSource {
  Future<Either<ApiFailure, void>> signUp(
      {required SignUpRequestBody signUpRequestBody});
}
