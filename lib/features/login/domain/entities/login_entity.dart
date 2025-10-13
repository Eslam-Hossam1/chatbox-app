import 'user.dart';

class LoginEntity {
  final User user;
  final String token;

  const LoginEntity({
    required this.user,
    required this.token,
  });
}
