import 'package:json_annotation/json_annotation.dart';

import 'login_data.dart';
import '../../domain/entities/login_entity.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final bool success;
  final String message;
  final LoginData data;

  const LoginResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  // Convert to domain entity
  LoginEntity toEntity() {
    return data.toEntity();
  }
}