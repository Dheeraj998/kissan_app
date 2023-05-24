import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<FirebaseAuthException, UserCredential>> signupUser();
}
