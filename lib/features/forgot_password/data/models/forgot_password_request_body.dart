import 'package:json_annotation/json_annotation.dart';

import '../../domain/params/forgot_password_params.dart';

part 'forgot_password_request_body.g.dart';

@JsonSerializable()
class ForgotPasswordRequestBody {
  final String email;

  const ForgotPasswordRequestBody({
    required this.email,
  });

  factory ForgotPasswordRequestBody.fromParams(ForgotPasswordParams params) {
    return ForgotPasswordRequestBody(
      email: params.email,
    );
  }

  factory ForgotPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordRequestBodyToJson(this);
}
