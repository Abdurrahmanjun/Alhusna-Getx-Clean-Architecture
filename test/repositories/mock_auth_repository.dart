import 'package:al_husna/domain/entities/user.dart';
import 'package:al_husna/domain/repositories/auth_repository.dart';

class MockAuthenticationRepository extends AuthenticationRepository {
  @override
  Future<User> signUp(String username) async {
    //Fake sign up action
    await Future.delayed(Duration(seconds: 1));
    return User(username: username);
  }
}
