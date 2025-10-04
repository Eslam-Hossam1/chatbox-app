import '../../../../core/errors/api_failure.dart';
import '../../../../core/errors/dio_api_failure.dart';
import '../datasources/login_remote_data_source.dart';
import '../models/login_request_body.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/params/login_params.dart';
import '../../domain/repo/login_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginRemoteDataSource _loginRemoteDataSource;

  LoginRepoImpl({required LoginRemoteDataSource loginRemoteDataSource})
      : _loginRemoteDataSource = loginRemoteDataSource;

  @override
  Future<Either<ApiFailure, LoginEntity>> login(
      {required LoginParams loginParams}) async {
    try {
      final response = await _loginRemoteDataSource.login(
        loginRequestBody: LoginRequestBody.fromParams(loginParams),
      );

      // Convert response to domain entity using toEntity method
      final loginEntity = response.toEntity();

      return Right(loginEntity);
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
