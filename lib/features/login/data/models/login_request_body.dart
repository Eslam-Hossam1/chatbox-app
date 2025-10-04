import 'package:json_annotation/json_annotation.dart';

import '../../domain/params/login_params.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String email;
  final String password;

  const LoginRequestBody({
    required this.email,
    required this.password,
  });

  factory LoginRequestBody.fromParams(LoginParams params) {
    return LoginRequestBody(
      email: params.email,
      password: params.password,
    );
  }

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
