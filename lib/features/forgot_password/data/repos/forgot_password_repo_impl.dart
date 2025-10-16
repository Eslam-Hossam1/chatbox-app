import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/api_failure.dart';
import '../../../../core/errors/dio_api_failure.dart';
import '../../domain/params/forgot_password_params.dart';
import '../../domain/repos/forgot_password_repo.dart';
import '../datasources/forgot_password_remote_data_source.dart';
import '../models/forgot_password_request_body.dart';

class ForgotPasswordRepoImpl implements ForgotPasswordRepo {
  final ForgotPasswordRemoteDataSource _forgotPasswordRemoteDataSource;

  ForgotPasswordRepoImpl(
      {required ForgotPasswordRemoteDataSource forgotPasswordRemoteDataSource})
      : _forgotPasswordRemoteDataSource = forgotPasswordRemoteDataSource;

  @override
  Future<Either<ApiFailure, void>> forgotPassword(
      {required ForgotPasswordParams forgotPasswordParams}) async {
    try {
      await _forgotPasswordRemoteDataSource.forgotPassword(
        forgotPasswordRequestBody:
            ForgotPasswordRequestBody.fromParams(forgotPasswordParams),
      );
      return Right(null);
    } catch (e) {
      if (e is DioException) {
        return Left(DioApiFailure.fromDioException(e));
      } else {
        return Left(
          DioApiFailure.unknownException(
            unKnownExceptionMsg: e.toString(),
          ),
        );
      }
    }
  }
}
