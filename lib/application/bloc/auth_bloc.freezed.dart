// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool type) isLogin,
    required TResult Function(String userType) isBuyer,
    required TResult Function() isLoading,
    required TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)
        signupUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
    TResult? Function()? isLoading,
    TResult? Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
    TResult Function()? isLoading,
    TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsBuyer value) isBuyer,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_SignupUserEvent value) signupUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_SignupUserEvent value)? signupUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_SignupUserEvent value)? signupUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool type) isLogin,
    required TResult Function(String userType) isBuyer,
    required TResult Function() isLoading,
    required TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)
        signupUserEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
    TResult? Function()? isLoading,
    TResult? Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
    TResult Function()? isLoading,
    TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsBuyer value) isBuyer,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_SignupUserEvent value) signupUserEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_SignupUserEvent value)? signupUserEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_SignupUserEvent value)? signupUserEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_IsLoginCopyWith<$Res> {
  factory _$$_IsLoginCopyWith(
          _$_IsLogin value, $Res Function(_$_IsLogin) then) =
      __$$_IsLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({bool type});
}

/// @nodoc
class __$$_IsLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_IsLogin>
    implements _$$_IsLoginCopyWith<$Res> {
  __$$_IsLoginCopyWithImpl(_$_IsLogin _value, $Res Function(_$_IsLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_IsLogin(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsLogin implements _IsLogin {
  const _$_IsLogin(this.type);

  @override
  final bool type;

  @override
  String toString() {
    return 'AuthEvent.isLogin(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsLogin &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsLoginCopyWith<_$_IsLogin> get copyWith =>
      __$$_IsLoginCopyWithImpl<_$_IsLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool type) isLogin,
    required TResult Function(String userType) isBuyer,
    required TResult Function() isLoading,
    required TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)
        signupUserEvent,
  }) {
    return isLogin(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
    TResult? Function()? isLoading,
    TResult? Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
  }) {
    return isLogin?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
    TResult Function()? isLoading,
    TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
    required TResult orElse(),
  }) {
    if (isLogin != null) {
      return isLogin(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsBuyer value) isBuyer,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_SignupUserEvent value) signupUserEvent,
  }) {
    return isLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_SignupUserEvent value)? signupUserEvent,
  }) {
    return isLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_SignupUserEvent value)? signupUserEvent,
    required TResult orElse(),
  }) {
    if (isLogin != null) {
      return isLogin(this);
    }
    return orElse();
  }
}

abstract class _IsLogin implements AuthEvent {
  const factory _IsLogin(final bool type) = _$_IsLogin;

  bool get type;
  @JsonKey(ignore: true)
  _$$_IsLoginCopyWith<_$_IsLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsBuyerCopyWith<$Res> {
  factory _$$_IsBuyerCopyWith(
          _$_IsBuyer value, $Res Function(_$_IsBuyer) then) =
      __$$_IsBuyerCopyWithImpl<$Res>;
  @useResult
  $Res call({String userType});
}

/// @nodoc
class __$$_IsBuyerCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_IsBuyer>
    implements _$$_IsBuyerCopyWith<$Res> {
  __$$_IsBuyerCopyWithImpl(_$_IsBuyer _value, $Res Function(_$_IsBuyer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = null,
  }) {
    return _then(_$_IsBuyer(
      null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IsBuyer implements _IsBuyer {
  const _$_IsBuyer(this.userType);

  @override
  final String userType;

  @override
  String toString() {
    return 'AuthEvent.isBuyer(userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsBuyer &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsBuyerCopyWith<_$_IsBuyer> get copyWith =>
      __$$_IsBuyerCopyWithImpl<_$_IsBuyer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool type) isLogin,
    required TResult Function(String userType) isBuyer,
    required TResult Function() isLoading,
    required TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)
        signupUserEvent,
  }) {
    return isBuyer(userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
    TResult? Function()? isLoading,
    TResult? Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
  }) {
    return isBuyer?.call(userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
    TResult Function()? isLoading,
    TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
    required TResult orElse(),
  }) {
    if (isBuyer != null) {
      return isBuyer(userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsBuyer value) isBuyer,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_SignupUserEvent value) signupUserEvent,
  }) {
    return isBuyer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_SignupUserEvent value)? signupUserEvent,
  }) {
    return isBuyer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_SignupUserEvent value)? signupUserEvent,
    required TResult orElse(),
  }) {
    if (isBuyer != null) {
      return isBuyer(this);
    }
    return orElse();
  }
}

abstract class _IsBuyer implements AuthEvent {
  const factory _IsBuyer(final String userType) = _$_IsBuyer;

  String get userType;
  @JsonKey(ignore: true)
  _$$_IsBuyerCopyWith<_$_IsBuyer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsLoadingCopyWith<$Res> {
  factory _$$_IsLoadingCopyWith(
          _$_IsLoading value, $Res Function(_$_IsLoading) then) =
      __$$_IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsLoadingCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_IsLoading>
    implements _$$_IsLoadingCopyWith<$Res> {
  __$$_IsLoadingCopyWithImpl(
      _$_IsLoading _value, $Res Function(_$_IsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'AuthEvent.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool type) isLogin,
    required TResult Function(String userType) isBuyer,
    required TResult Function() isLoading,
    required TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)
        signupUserEvent,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
    TResult? Function()? isLoading,
    TResult? Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
    TResult Function()? isLoading,
    TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsBuyer value) isBuyer,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_SignupUserEvent value) signupUserEvent,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_SignupUserEvent value)? signupUserEvent,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_SignupUserEvent value)? signupUserEvent,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements AuthEvent {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$$_SignupUserEventCopyWith<$Res> {
  factory _$$_SignupUserEventCopyWith(
          _$_SignupUserEvent value, $Res Function(_$_SignupUserEvent) then) =
      __$$_SignupUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      String? nickname,
      String? lastname,
      String type,
      String firstname,
      String dob});
}

/// @nodoc
class __$$_SignupUserEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignupUserEvent>
    implements _$$_SignupUserEventCopyWith<$Res> {
  __$$_SignupUserEventCopyWithImpl(
      _$_SignupUserEvent _value, $Res Function(_$_SignupUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? nickname = freezed,
    Object? lastname = freezed,
    Object? type = null,
    Object? firstname = null,
    Object? dob = null,
  }) {
    return _then(_$_SignupUserEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupUserEvent implements _SignupUserEvent {
  const _$_SignupUserEvent(
      {required this.email,
      required this.password,
      this.nickname,
      this.lastname,
      required this.type,
      required this.firstname,
      required this.dob});

  @override
  final String email;
  @override
  final String password;
  @override
  final String? nickname;
  @override
  final String? lastname;
  @override
  final String type;
  @override
  final String firstname;
  @override
  final String dob;

  @override
  String toString() {
    return 'AuthEvent.signupUserEvent(email: $email, password: $password, nickname: $nickname, lastname: $lastname, type: $type, firstname: $firstname, dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupUserEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, nickname, lastname, type, firstname, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupUserEventCopyWith<_$_SignupUserEvent> get copyWith =>
      __$$_SignupUserEventCopyWithImpl<_$_SignupUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool type) isLogin,
    required TResult Function(String userType) isBuyer,
    required TResult Function() isLoading,
    required TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)
        signupUserEvent,
  }) {
    return signupUserEvent(
        email, password, nickname, lastname, type, firstname, dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
    TResult? Function()? isLoading,
    TResult? Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
  }) {
    return signupUserEvent?.call(
        email, password, nickname, lastname, type, firstname, dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
    TResult Function()? isLoading,
    TResult Function(String email, String password, String? nickname,
            String? lastname, String type, String firstname, String dob)?
        signupUserEvent,
    required TResult orElse(),
  }) {
    if (signupUserEvent != null) {
      return signupUserEvent(
          email, password, nickname, lastname, type, firstname, dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsBuyer value) isBuyer,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_SignupUserEvent value) signupUserEvent,
  }) {
    return signupUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_SignupUserEvent value)? signupUserEvent,
  }) {
    return signupUserEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_SignupUserEvent value)? signupUserEvent,
    required TResult orElse(),
  }) {
    if (signupUserEvent != null) {
      return signupUserEvent(this);
    }
    return orElse();
  }
}

abstract class _SignupUserEvent implements AuthEvent {
  const factory _SignupUserEvent(
      {required final String email,
      required final String password,
      final String? nickname,
      final String? lastname,
      required final String type,
      required final String firstname,
      required final String dob}) = _$_SignupUserEvent;

  String get email;
  String get password;
  String? get nickname;
  String? get lastname;
  String get type;
  String get firstname;
  String get dob;
  @JsonKey(ignore: true)
  _$$_SignupUserEventCopyWith<_$_SignupUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get isLogin => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  TextEditingController get emailCtr => throw _privateConstructorUsedError;
  TextEditingController get passwordCtr => throw _privateConstructorUsedError;
  TextEditingController get nickNameCtr => throw _privateConstructorUsedError;
  TextEditingController get firstNameCtr => throw _privateConstructorUsedError;
  TextEditingController get dobCtr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLogin,
      String userType,
      bool isBusy,
      TextEditingController emailCtr,
      TextEditingController passwordCtr,
      TextEditingController nickNameCtr,
      TextEditingController firstNameCtr,
      TextEditingController dobCtr});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
    Object? userType = null,
    Object? isBusy = null,
    Object? emailCtr = null,
    Object? passwordCtr = null,
    Object? nickNameCtr = null,
    Object? firstNameCtr = null,
    Object? dobCtr = null,
  }) {
    return _then(_value.copyWith(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      emailCtr: null == emailCtr
          ? _value.emailCtr
          : emailCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordCtr: null == passwordCtr
          ? _value.passwordCtr
          : passwordCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      nickNameCtr: null == nickNameCtr
          ? _value.nickNameCtr
          : nickNameCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      firstNameCtr: null == firstNameCtr
          ? _value.firstNameCtr
          : firstNameCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      dobCtr: null == dobCtr
          ? _value.dobCtr
          : dobCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLogin,
      String userType,
      bool isBusy,
      TextEditingController emailCtr,
      TextEditingController passwordCtr,
      TextEditingController nickNameCtr,
      TextEditingController firstNameCtr,
      TextEditingController dobCtr});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
    Object? userType = null,
    Object? isBusy = null,
    Object? emailCtr = null,
    Object? passwordCtr = null,
    Object? nickNameCtr = null,
    Object? firstNameCtr = null,
    Object? dobCtr = null,
  }) {
    return _then(_$_AuthState(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      emailCtr: null == emailCtr
          ? _value.emailCtr
          : emailCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordCtr: null == passwordCtr
          ? _value.passwordCtr
          : passwordCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      nickNameCtr: null == nickNameCtr
          ? _value.nickNameCtr
          : nickNameCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      firstNameCtr: null == firstNameCtr
          ? _value.firstNameCtr
          : firstNameCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      dobCtr: null == dobCtr
          ? _value.dobCtr
          : dobCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isLogin,
      required this.userType,
      required this.isBusy,
      required this.emailCtr,
      required this.passwordCtr,
      required this.nickNameCtr,
      required this.firstNameCtr,
      required this.dobCtr});

  @override
  final bool isLogin;
  @override
  final String userType;
  @override
  final bool isBusy;
  @override
  final TextEditingController emailCtr;
  @override
  final TextEditingController passwordCtr;
  @override
  final TextEditingController nickNameCtr;
  @override
  final TextEditingController firstNameCtr;
  @override
  final TextEditingController dobCtr;

  @override
  String toString() {
    return 'AuthState(isLogin: $isLogin, userType: $userType, isBusy: $isBusy, emailCtr: $emailCtr, passwordCtr: $passwordCtr, nickNameCtr: $nickNameCtr, firstNameCtr: $firstNameCtr, dobCtr: $dobCtr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.emailCtr, emailCtr) ||
                other.emailCtr == emailCtr) &&
            (identical(other.passwordCtr, passwordCtr) ||
                other.passwordCtr == passwordCtr) &&
            (identical(other.nickNameCtr, nickNameCtr) ||
                other.nickNameCtr == nickNameCtr) &&
            (identical(other.firstNameCtr, firstNameCtr) ||
                other.firstNameCtr == firstNameCtr) &&
            (identical(other.dobCtr, dobCtr) || other.dobCtr == dobCtr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogin, userType, isBusy,
      emailCtr, passwordCtr, nickNameCtr, firstNameCtr, dobCtr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLogin,
      required final String userType,
      required final bool isBusy,
      required final TextEditingController emailCtr,
      required final TextEditingController passwordCtr,
      required final TextEditingController nickNameCtr,
      required final TextEditingController firstNameCtr,
      required final TextEditingController dobCtr}) = _$_AuthState;

  @override
  bool get isLogin;
  @override
  String get userType;
  @override
  bool get isBusy;
  @override
  TextEditingController get emailCtr;
  @override
  TextEditingController get passwordCtr;
  @override
  TextEditingController get nickNameCtr;
  @override
  TextEditingController get firstNameCtr;
  @override
  TextEditingController get dobCtr;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
