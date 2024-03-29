import 'package:chat/models/user.dart';
import 'package:flutter/foundation.dart';

abstract class AuthenticationRepository {
 // final StorageRepository storageRepository = serviceLocator<StorageRepository>();
  Future<String> signIn({@required String email, @required String password});
  Future<User> signUp({
    @required String username,
    @required String email,
    @required String password,
  });
  Future<void> logout();
  Future<String> isSignIn();
  Future<String> getUserID();
}
