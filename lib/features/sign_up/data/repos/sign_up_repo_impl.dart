import 'package:chatbox_app/core/errors/api_failure.dart';
import 'package:chatbox_app/features/sign_up/data/datasources/sign_up_remote_data_source.dart';
import 'package:chatbox_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:chatbox_app/features/sign_up/domain/params/sign_up_params.dart';
import 'package:chatbox_app/features/sign_up/domain/sign_up_repo.dart';
import 'package:dartz/dartz.dart';

class SignUpRepoImpl implements SignUpRepo{
  final SignUpRemoteDataSource _signUpRemoteDataSource;

  SignUpRepoImpl({required SignUpRemoteDataSource signUpRemoteDataSource})
      : _signUpRemoteDataSource = signUpRemoteDataSource;

  @override
  Future<Either<ApiFailure, void>> signUp(
      {required SignUpParams signUpParams}) {
    return _signUpRemoteDataSource.signUp(
      signUpRequestBody: SignUpRequestBody.fromParams(signUpParams),
    );
  }
}