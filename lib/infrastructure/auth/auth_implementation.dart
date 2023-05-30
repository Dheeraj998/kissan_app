import 'dart:convert';

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
      required String mobile}) async {
    try {
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      UserModel user = UserModel(
          email: email,
          uid: cred.user!.uid,
          firstName: firstname,
          mobile: mobile,
          type: type,
          lastName: lastname,
          nickName: nickname);

      customPrint(user.toString());

      DocumentSnapshot? registeredUser;
      if (type == 'Buyer') {
        await _firestore
            .collection("buyer")
            .doc(cred.user!.uid)
            .set(user.toJson());
        registeredUser = await _firestore
            .collection('buyer')
            .doc(_auth.currentUser!.uid)
            .get();
      } else {
        await _firestore
            .collection("seller")
            .doc(cred.user!.uid)
            .set(user.toJson());
        registeredUser = await _firestore
            .collection('users')
            .doc(_auth.currentUser!.uid)
            .get();
      }

      UserModel regUserModel = UserModel.fromSnap(registeredUser);

      return Right(regUserModel);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    } catch (e) {
      print(e.toString());
      return Left(
        FirebaseAuthException(message: e.toString(), code: ""),
      );
    }
  }

  @override
  Future<Either<FirebaseAuthException, UserModel>> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      customPrint("$email  $password");
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      DocumentSnapshot? user;

      user = await _firestore
          .collection('buyer')
          .doc(_auth.currentUser!.uid)
          .get();

      if (!user.exists) {
        user = await _firestore
            .collection('seller')
            .doc(_auth.currentUser!.uid)
            .get();
      }
      UserModel regUserModel = UserModel.fromSnap(user);
      customPrint(regUserModel.email);
      final box = await Hive.openBox('user');
      box.put('user', jsonEncode(regUserModel));
      // var name = UserModel.fromJson(jsonDecode(box.get('user')));
      // customPrint("${name.email} %%%%%%%%%%%%%%%%%%%%%%%%%%%");

      customPrint(regUserModel);

      customPrint(regUserModel);
      return Right(regUserModel);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    } on Exception catch (e) {
      return Left(FirebaseAuthException(code: "", message: e.toString()));
    }
  }
}
