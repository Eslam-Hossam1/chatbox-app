import 'package:chatbox_app/features/sign_up/domain/params/sign_up_params.dart';

abstract interface class SignUpRepo {
  Future<void> signUp(SignUpParams params);
}
