import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/api_failure.dart';
import '../../../../core/errors/dio_api_failure.dart';
import '../../domain/params/reset_password_params.dart';
import '../../domain/repos/reset_password_repo.dart';
import '../datasources/reset_password_remote_data_source.dart';
import '../models/reset_password_request_body.dart';

class ResetPasswordRepoImpl implements ResetPasswordRepo {
  final ResetPasswordRemoteDataSource _resetPasswordRemoteDataSource;

  ResetPasswordRepoImpl(
      {required ResetPasswordRemoteDataSource resetPasswordRemoteDataSource})
      : _resetPasswordRemoteDataSource = resetPasswordRemoteDataSource;

  @override
  Future<Either<ApiFailure, void>> resetPassword(
      {required ResetPasswordParams resetPasswordParams}) async {
    try {
      await _resetPasswordRemoteDataSource.resetPassword(
        resetPasswordRequestBody:
            ResetPasswordRequestBody.fromParams(resetPasswordParams),
      );
      return const Right(null);
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
