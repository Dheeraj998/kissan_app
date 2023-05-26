import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kisan_app/domain/auth/auth_respository.dart';
import 'package:kisan_app/models/user_model.dart';

import '../../core/utils/custom_print.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  // TextEditingController emailCtr = TextEditingController();
  // TextEditingController passwordCtr = TextEditingController();
  // TextEditingController nickNameCtr = TextEditingController();
  // TextEditingController firstNameCtr = TextEditingController();
  // TextEditingController dobCtr = TextEditingController();
  AuthBloc(this.authRepository) : super(AuthState.initial()) {
    on<_Started>((event, emit) {});
    on<_IsLogin>((event, emit) {
      if (event.type == true) {
        emit(state.copyWith(isLogin: true));
      } else {
        emit(state.copyWith(isLogin: false));
      }
    });
    on<_IsBuyer>((event, emit) {
      if (event.userType == 'Buyer') {
        emit(state.copyWith(userType: 'Buyer'));
      } else {
        emit(state.copyWith(userType: 'Seller'));
      }
    });
    // on<_IsLoading>((event, emit) {
    //   emit(state.copyWith(isBusy: true));
    // });

    on<_SignupUserEvent>((event, emit) async {
      // print(state.isBusy);

      emit(state.copyWith(isBusy: true));
      // print(state.isBusy);
      final res = await authRepository.signupUser(
          email: event.email,
          password: event.password,
          type: event.type,
          firstname: event.firstname,
          dob: event.dob,
          lastname: event.lastname,
          nickname: event.nickname);
      emit(state.copyWith(isBusy: false));
      var resp;
      res.fold((l) {
        resp = state.copyWith(authException: l);
      }, (r) async {
        final box = await Hive.openBox('user');
        box.put('user', jsonEncode(r.toJson()));
        resp = state.copyWith(userModel: r);
      });
      emit(resp);
      customPrint(res);
    });
  }
}
