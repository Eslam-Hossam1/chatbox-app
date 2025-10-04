import '../models/sign_up_request_body.dart';

abstract interface class SignUpRemoteDataSource {
  Future<void> signUp({required SignUpRequestBody signUpRequestBody});
}
