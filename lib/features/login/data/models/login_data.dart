import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/login_entity.dart';
import 'user.dart';

part 'login_data.g.dart';

@JsonSerializable()
class LoginData {
  final User user;
  final String token;

  const LoginData({
    required this.user,
    required this.token,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);

  // Convert to domain entity
  LoginEntity toEntity() {
    return LoginEntity(
      user: user.toEntity(),
      token: token,
    );
  }
}
