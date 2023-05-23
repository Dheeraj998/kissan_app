import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kisan_app/models/user_model.dart';

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
    } catch (e) {}
  }
}
