import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/user.dart' as domain_user;

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String email;
  final String username;
  final String? image;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  // Convert to domain entity
  domain_user.User toEntity() {
    return domain_user.User(
      id: id,
      name: name,
      email: email,
      username: username,
      image: image,
    );
  }
}
