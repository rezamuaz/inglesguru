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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuth user, DeviceInfo deviceId) signing,
    required TResult Function() signout,
    required TResult Function() checking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuth user, DeviceInfo deviceId)? signing,
    TResult? Function()? signout,
    TResult? Function()? checking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuth user, DeviceInfo deviceId)? signing,
    TResult Function()? signout,
    TResult Function()? checking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signing value) signing,
    required TResult Function(_Signout value) signout,
    required TResult Function(_Checking value) checking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signing value)? signing,
    TResult? Function(_Signout value)? signout,
    TResult? Function(_Checking value)? checking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signing value)? signing,
    TResult Function(_Signout value)? signout,
    TResult Function(_Checking value)? checking,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SigningImplCopyWith<$Res> {
  factory _$$SigningImplCopyWith(
          _$SigningImpl value, $Res Function(_$SigningImpl) then) =
      __$$SigningImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuth user, DeviceInfo deviceId});

  $UserAuthCopyWith<$Res> get user;
  $DeviceInfoCopyWith<$Res> get deviceId;
}

/// @nodoc
class __$$SigningImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SigningImpl>
    implements _$$SigningImplCopyWith<$Res> {
  __$$SigningImplCopyWithImpl(
      _$SigningImpl _value, $Res Function(_$SigningImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? deviceId = null,
  }) {
    return _then(_$SigningImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAuth,
      null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAuthCopyWith<$Res> get user {
    return $UserAuthCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res> get deviceId {
    return $DeviceInfoCopyWith<$Res>(_value.deviceId, (value) {
      return _then(_value.copyWith(deviceId: value));
    });
  }
}

/// @nodoc

class _$SigningImpl implements _Signing {
  const _$SigningImpl(this.user, this.deviceId);

  @override
  final UserAuth user;
  @override
  final DeviceInfo deviceId;

  @override
  String toString() {
    return 'AuthEvent.signing(user: $user, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigningImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, deviceId);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigningImplCopyWith<_$SigningImpl> get copyWith =>
      __$$SigningImplCopyWithImpl<_$SigningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuth user, DeviceInfo deviceId) signing,
    required TResult Function() signout,
    required TResult Function() checking,
  }) {
    return signing(user, deviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuth user, DeviceInfo deviceId)? signing,
    TResult? Function()? signout,
    TResult? Function()? checking,
  }) {
    return signing?.call(user, deviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuth user, DeviceInfo deviceId)? signing,
    TResult Function()? signout,
    TResult Function()? checking,
    required TResult orElse(),
  }) {
    if (signing != null) {
      return signing(user, deviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signing value) signing,
    required TResult Function(_Signout value) signout,
    required TResult Function(_Checking value) checking,
  }) {
    return signing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signing value)? signing,
    TResult? Function(_Signout value)? signout,
    TResult? Function(_Checking value)? checking,
  }) {
    return signing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signing value)? signing,
    TResult Function(_Signout value)? signout,
    TResult Function(_Checking value)? checking,
    required TResult orElse(),
  }) {
    if (signing != null) {
      return signing(this);
    }
    return orElse();
  }
}

abstract class _Signing implements AuthEvent {
  const factory _Signing(final UserAuth user, final DeviceInfo deviceId) =
      _$SigningImpl;

  UserAuth get user;
  DeviceInfo get deviceId;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigningImplCopyWith<_$SigningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignoutImplCopyWith<$Res> {
  factory _$$SignoutImplCopyWith(
          _$SignoutImpl value, $Res Function(_$SignoutImpl) then) =
      __$$SignoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignoutImpl>
    implements _$$SignoutImplCopyWith<$Res> {
  __$$SignoutImplCopyWithImpl(
      _$SignoutImpl _value, $Res Function(_$SignoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignoutImpl implements _Signout {
  const _$SignoutImpl();

  @override
  String toString() {
    return 'AuthEvent.signout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuth user, DeviceInfo deviceId) signing,
    required TResult Function() signout,
    required TResult Function() checking,
  }) {
    return signout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuth user, DeviceInfo deviceId)? signing,
    TResult? Function()? signout,
    TResult? Function()? checking,
  }) {
    return signout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuth user, DeviceInfo deviceId)? signing,
    TResult Function()? signout,
    TResult Function()? checking,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signing value) signing,
    required TResult Function(_Signout value) signout,
    required TResult Function(_Checking value) checking,
  }) {
    return signout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signing value)? signing,
    TResult? Function(_Signout value)? signout,
    TResult? Function(_Checking value)? checking,
  }) {
    return signout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signing value)? signing,
    TResult Function(_Signout value)? signout,
    TResult Function(_Checking value)? checking,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout(this);
    }
    return orElse();
  }
}

abstract class _Signout implements AuthEvent {
  const factory _Signout() = _$SignoutImpl;
}

/// @nodoc
abstract class _$$CheckingImplCopyWith<$Res> {
  factory _$$CheckingImplCopyWith(
          _$CheckingImpl value, $Res Function(_$CheckingImpl) then) =
      __$$CheckingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckingImpl>
    implements _$$CheckingImplCopyWith<$Res> {
  __$$CheckingImplCopyWithImpl(
      _$CheckingImpl _value, $Res Function(_$CheckingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckingImpl implements _Checking {
  const _$CheckingImpl();

  @override
  String toString() {
    return 'AuthEvent.checking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuth user, DeviceInfo deviceId) signing,
    required TResult Function() signout,
    required TResult Function() checking,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuth user, DeviceInfo deviceId)? signing,
    TResult? Function()? signout,
    TResult? Function()? checking,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuth user, DeviceInfo deviceId)? signing,
    TResult Function()? signout,
    TResult Function()? checking,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signing value) signing,
    required TResult Function(_Signout value) signout,
    required TResult Function(_Checking value) checking,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signing value)? signing,
    TResult? Function(_Signout value)? signout,
    TResult? Function(_Checking value)? checking,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signing value)? signing,
    TResult Function(_Signout value)? signout,
    TResult Function(_Checking value)? checking,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class _Checking implements AuthEvent {
  const factory _Checking() = _$CheckingImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserHive? user) isAuthorized,
    required TResult Function() unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserHive? user)? isAuthorized,
    TResult? Function()? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserHive? user)? isAuthorized,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsAuthorized value) isAuthorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthorized value)? isAuthorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthorized value)? isAuthorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserHive? user) isAuthorized,
    required TResult Function() unAuthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserHive? user)? isAuthorized,
    TResult? Function()? unAuthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserHive? user)? isAuthorized,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsAuthorized value) isAuthorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthorized value)? isAuthorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthorized value)? isAuthorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserHive? user) isAuthorized,
    required TResult Function() unAuthorized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserHive? user)? isAuthorized,
    TResult? Function()? unAuthorized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserHive? user)? isAuthorized,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsAuthorized value) isAuthorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthorized value)? isAuthorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthorized value)? isAuthorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$IsAuthorizedImplCopyWith<$Res> {
  factory _$$IsAuthorizedImplCopyWith(
          _$IsAuthorizedImpl value, $Res Function(_$IsAuthorizedImpl) then) =
      __$$IsAuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserHive? user});

  $UserHiveCopyWith<$Res>? get user;
}

/// @nodoc
class __$$IsAuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$IsAuthorizedImpl>
    implements _$$IsAuthorizedImplCopyWith<$Res> {
  __$$IsAuthorizedImplCopyWithImpl(
      _$IsAuthorizedImpl _value, $Res Function(_$IsAuthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$IsAuthorizedImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserHive?,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHiveCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserHiveCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$IsAuthorizedImpl implements _IsAuthorized {
  const _$IsAuthorizedImpl({this.user});

  @override
  final UserHive? user;

  @override
  String toString() {
    return 'AuthState.isAuthorized(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsAuthorizedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsAuthorizedImplCopyWith<_$IsAuthorizedImpl> get copyWith =>
      __$$IsAuthorizedImplCopyWithImpl<_$IsAuthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserHive? user) isAuthorized,
    required TResult Function() unAuthorized,
  }) {
    return isAuthorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserHive? user)? isAuthorized,
    TResult? Function()? unAuthorized,
  }) {
    return isAuthorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserHive? user)? isAuthorized,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (isAuthorized != null) {
      return isAuthorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsAuthorized value) isAuthorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return isAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthorized value)? isAuthorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return isAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthorized value)? isAuthorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (isAuthorized != null) {
      return isAuthorized(this);
    }
    return orElse();
  }
}

abstract class _IsAuthorized implements AuthState {
  const factory _IsAuthorized({final UserHive? user}) = _$IsAuthorizedImpl;

  UserHive? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsAuthorizedImplCopyWith<_$IsAuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedImplCopyWith<$Res> {
  factory _$$UnAuthorizedImplCopyWith(
          _$UnAuthorizedImpl value, $Res Function(_$UnAuthorizedImpl) then) =
      __$$UnAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnAuthorizedImpl>
    implements _$$UnAuthorizedImplCopyWith<$Res> {
  __$$UnAuthorizedImplCopyWithImpl(
      _$UnAuthorizedImpl _value, $Res Function(_$UnAuthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthorizedImpl implements _UnAuthorized {
  const _$UnAuthorizedImpl();

  @override
  String toString() {
    return 'AuthState.unAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserHive? user) isAuthorized,
    required TResult Function() unAuthorized,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserHive? user)? isAuthorized,
    TResult? Function()? unAuthorized,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserHive? user)? isAuthorized,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsAuthorized value) isAuthorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthorized value)? isAuthorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthorized value)? isAuthorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements AuthState {
  const factory _UnAuthorized() = _$UnAuthorizedImpl;
}
