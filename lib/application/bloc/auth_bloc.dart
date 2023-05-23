import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  TextEditingController emailCtr = TextEditingController();
  TextEditingController passwordCtr = TextEditingController();
  TextEditingController nickNameCtr = TextEditingController();
  TextEditingController firstNameCtr = TextEditingController();
  TextEditingController dobCtr = TextEditingController();

  AuthBloc() : super(AuthState.initial()) {
    on<_Started>((event, emit) {});
    on<_IsLogin>((event, emit) {
      print(event.type);
      if (event.type == true) {
        emit(state.copyWith(isLogin: true));
      } else {
        emit(state.copyWith(isLogin: false));
      }
    });
    on<_IsBuyer>((event, emit) {
      print("Eeeeeeeqqqqqqqqqqqqqq");
      print(event.userType);

      if (event.userType == 'Buyer') {
        emit(state.copyWith(userType: 'Buyer'));
      } else {
        emit(state.copyWith(userType: 'Seller'));
      }
    });
  }
}
