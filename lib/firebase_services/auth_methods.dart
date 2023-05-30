import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/models/user_model.dart';
import 'package:kisan_app/presentation/widgets/custom_snackbar.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void signupUser(
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
      await _firestore
          .collection("users")
          .doc(cred.user!.uid)
          .set(user.toJson());
    } catch (e) {}
  }

  void loginUser(
      {required email,
      required password,
      required BuildContext context}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.of(context).pushReplacementNamed(RouteName.mainScreen);
    } on FirebaseAuthException catch (authError) {
      print(authError.code);
      CustomSnackbar.show(context, authError.code);
    } catch (e) {
      print(e.toString());
      CustomSnackbar.show(context, "hello");
    }
  }
}
