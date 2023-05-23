part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.isLogin(bool type) = _IsLogin;

  const factory AuthEvent.isBuyer(String userType) = _IsBuyer;
}
