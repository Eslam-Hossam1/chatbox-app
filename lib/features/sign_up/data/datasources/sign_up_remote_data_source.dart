import 'package:chatbox_app/features/sign_up/data/models/sign_up_request_body.dart';

abstract interface class SignUpRemoteDataSource {
  Future<void> signUp(
      {required SignUpRequestBody signUpRequestBody});
}
