import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
    on<_Started>((event, emit) async {
      final box = await Hive.openBox('user');
      // if (state.userModel != null) {
      var user = UserModel.fromJson(jsonDecode(box.get('user')));
      emit(state.copyWith(userModel: user));
      // }
    });
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
          mobile: event.mobile,
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

        customPrint(state.userModel);
      });
      // customPrint(resp.toString());
      // customPrint("--------------------------------- $resp");
      emit(resp);
      resp = null;
    });

    on<_LoginUserEvent>((event, emit) async {
      emit(state.copyWith(isBusy: true));
      final Either<FirebaseAuthException, UserModel> res =
          await authRepository.loginUser(
        email: event.email,
        password: event.password,
      );

      final _state = res.fold((l) => state.copyWith(authException: l),
          (r) => state.copyWith(userModel: r, authException: null));

      emit(_state);
      emit(state.copyWith(isBusy: false));
    });

    on<_SignOutEvent>((event, emit) async {
      emit(state.copyWith(isBusy: true));
      final box = await Hive.openBox('user');
      Hive.box('user').clear();

      emit(state.copyWith(userModel: null, isBusy: false));
    });
  }
}
