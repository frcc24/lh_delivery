import '/../domain/entities/entities.dart';

abstract class Authentication {
  Future<AccountEntity?> auth(AuthenticationParams params);
}

class AuthenticationParams {
  final String email;
  final String password;

  AuthenticationParams(this.email, this.password);
}
