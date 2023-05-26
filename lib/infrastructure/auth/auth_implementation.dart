import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth_platform_interface/src/firebase_auth_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kisan_app/core/utils/custom_print.dart';
import 'package:kisan_app/domain/auth/auth_respository.dart';
import 'package:hive/hive.dart';

import '../../models/user_model.dart';

@LazySingleton(as: AuthRepository)
class AuthImpl implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Either<FirebaseAuthException, UserModel>> signupUser(
      {required String email,
      required String password,
      String? nickname,
      String? lastname,
      required String type,
      required String firstname,
      required String dob}) async {
    try {
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      UserModel user = UserModel(
          email: email,
          uid: cred.user!.uid,
          firstName: firstname,
          dob: dob,
          type: type,
          lastName: lastname,
          nickName: nickname);
      await _firestore
          .collection("users")
          .doc(cred.user!.uid)
          .set(user.toJson());

      final registeredUser = await _firestore
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .get();
      UserModel regUserModel = UserModel.fromSnap(registeredUser);
      print(registeredUser);

      return Right(regUserModel);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    } catch (e) {
      print(e.toString());
      throw Left(e);
    }
  }

  @override
  Future<Either<FirebaseAuthException, UserCredential>> loginUser() {
    // TODO: implement loginUser
    throw UnimplementedError();
  }
}
