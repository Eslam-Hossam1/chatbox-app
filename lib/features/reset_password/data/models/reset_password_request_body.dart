import 'package:json_annotation/json_annotation.dart';

import '../../domain/params/reset_password_params.dart';

part 'reset_password_request_body.g.dart';

@JsonSerializable()
class ResetPasswordRequestBody {
  final String email;
  final String password;

  const ResetPasswordRequestBody({
    required this.email,
    required this.password,
  });

  factory ResetPasswordRequestBody.fromParams(ResetPasswordParams params) {
    return ResetPasswordRequestBody(
      email: params.email,
      password: params.newPassword,
    );
  }

  factory ResetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);
}
