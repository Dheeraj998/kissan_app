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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsBuyer value) isBuyer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
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
  }) {
    return isLogin(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
  }) {
    return isLogin?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
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
  }) {
    return isLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
  }) {
    return isLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
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
  }) {
    return isBuyer(userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool type)? isLogin,
    TResult? Function(String userType)? isBuyer,
  }) {
    return isBuyer?.call(userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool type)? isLogin,
    TResult Function(String userType)? isBuyer,
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
  }) {
    return isBuyer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsBuyer value)? isBuyer,
  }) {
    return isBuyer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsBuyer value)? isBuyer,
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
mixin _$AuthState {
  bool get isLogin => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool isLogin, String? userType});
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
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({bool isLogin, String? userType});
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
    Object? userType = freezed,
  }) {
    return _then(_$_AuthState(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState({required this.isLogin, this.userType});

  @override
  final bool isLogin;
  @override
  final String? userType;

  @override
  String toString() {
    return 'AuthState(isLogin: $isLogin, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogin, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLogin, final String? userType}) = _$_AuthState;

  @override
  bool get isLogin;
  @override
  String? get userType;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
