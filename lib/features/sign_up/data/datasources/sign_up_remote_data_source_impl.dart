import 'package:chatbox_app/core/errors/api_failure.dart';
import 'package:chatbox_app/core/networking/api_consumer.dart';
import 'package:chatbox_app/core/networking/end_points.dart';
import 'package:chatbox_app/features/sign_up/data/datasources/sign_up_remote_data_source.dart';
import 'package:chatbox_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:dartz/dartz.dart';

class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  final ApiConsumer _apiConsumer;

  SignUpRemoteDataSourceImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<Either<ApiFailure, void>> signUp(
      {required SignUpRequestBody signUpRequestBody}) async {
    return await _apiConsumer.post(
      EndPoints.signUp,
      data: signUpRequestBody.toJson(),
    );
  }
}