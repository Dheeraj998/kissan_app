part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLogin,
    String? userType,
    required bool isBusy,
  }) = _AuthState;

  factory AuthState.initial() =>
      const AuthState(isLogin: false, userType: 'Buyer', isBusy: false);
}
