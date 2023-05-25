import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<FirebaseAuthException, UserCredential>> signupUser(
      {required String email,
      required String password,
      String? nickname,
      String? lastname,
      required String type,
      required String firstname,
      required String dob});

  Future<Either<FirebaseAuthException, UserCredential>> loginUser();
}
