import 'package:json_annotation/json_annotation.dart';

import '../../domain/params/sign_up_params.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String username;
  final String email;
  final String password;

  const SignUpRequestBody({
    required this.name,
    required this.username,
    required this.email,
    required this.password,
  });

  factory SignUpRequestBody.fromParams(SignUpParams params) {
    return SignUpRequestBody(
      name: params.displayName,
      username: params.username,
      email: params.email,
      password: params.password,
    );
  }

  factory SignUpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
