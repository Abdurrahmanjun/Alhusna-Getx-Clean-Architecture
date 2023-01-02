import 'package:al_husna/domain/entities/user.dart';

abstract class AuthenticationRepository {
  Future<User> signUp(String username);
}
