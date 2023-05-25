part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.isLogin(bool type) = _IsLogin;
  const factory AuthEvent.isBuyer(String userType) = _IsBuyer;
  const factory AuthEvent.isLoading() = _IsLoading;

  const factory AuthEvent.signupUserEvent(
      {required String email,
      required String password,
      String? nickname,
      String? lastname,
      required String type,
      required String firstname,
      required String dob}) = _SignupUserEvent;
}
