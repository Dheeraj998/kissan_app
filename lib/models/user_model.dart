import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String email;
  final String uid;
  final String firstName;
  final String? nickName;
  final String mobile;
  final String? lastName;
  final String type;

  const UserModel(
      {required this.email,
      required this.uid,
      required this.firstName,
      required this.mobile,
      required this.type,
      this.nickName,
      this.lastName});

  static UserModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return UserModel(
      firstName: snapshot["first_name"],
      uid: snapshot["uid"],
      email: snapshot["email"],
      mobile: snapshot["mobile"],
      type: snapshot["type"],
      nickName: snapshot["nick_name"],
      lastName: snapshot["last_name"],
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        firstName: json['first_name'],
        uid: json['uid'],
        email: json['email'],
        mobile: json['mobile'],
        type: json['type'],
        nickName: json['nick_name'],
        lastName: json['last_name']);
  }

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "uid": uid,
        "email": email,
        "mobile": mobile,
        "type": type,
        "nick_name": nickName,
        "last_name": lastName,
      };
}
