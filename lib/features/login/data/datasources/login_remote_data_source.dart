import '../models/login_request_body.dart';
import '../models/login_response.dart';

abstract interface class LoginRemoteDataSource {
  Future<LoginResponse> login({required LoginRequestBody loginRequestBody});
}
