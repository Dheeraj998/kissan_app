import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:kisan_app/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<FirebaseAuthException, UserModel>> signupUser(
      {required String email,
      required String password,
      String? nickname,
      String? lastname,
      required String type,
      required String firstname,
      required String mobile});

  Future<Either<FirebaseAuthException, UserModel>> loginUser({
    required String email,
    required String password,
  });
}
