import '../../../../core/networking/api_consumer.dart';
import '../../../../core/networking/end_points.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';
import 'login_remote_data_source.dart';

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final ApiConsumer _apiConsumer;

  LoginRemoteDataSourceImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<LoginResponse> login(
      {required LoginRequestBody loginRequestBody}) async {
    final response = await _apiConsumer.post(
      EndPoints.login,
      data: loginRequestBody.toJson(),
    );
    return LoginResponse.fromJson(response);
  }
}
