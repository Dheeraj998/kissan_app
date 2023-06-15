part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  // TextEditingController emailCtr = TextEditingController();
  // TextEditingController passwordCtr = TextEditingController();
  // TextEditingController nickNameCtr = TextEditingController();
  // TextEditingController firstNameCtr = TextEditingController();
  // TextEditingController dobCtr = TextEditingController();
  const factory AuthState({
    required bool isLogin,
    required String userType,
    required bool isBusy,
    Box? box,
    FirebaseAuthException? authException,
    UserModel? userModel,
    required TextEditingController emailCtr,
    required TextEditingController passwordCtr,
    required TextEditingController nickNameCtr,
    required TextEditingController firstNameCtr,
    required TextEditingController dobCtr,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
      isLogin: false,
      userType: 'Buyer',
      isBusy: false,
      box: null,
      userModel: null,
      authException: null,
      emailCtr: TextEditingController(text: ''),
      passwordCtr: TextEditingController(text: ''),
      nickNameCtr: TextEditingController(text: ''),
      firstNameCtr: TextEditingController(text: ''),
      dobCtr: TextEditingController(text: ''));
}
