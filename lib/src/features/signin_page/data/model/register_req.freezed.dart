// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterReqMod _$RegisterReqModFromJson(Map<String, dynamic> json) {
  return _RegisterReqMod.fromJson(json);
}

/// @nodoc
mixin _$RegisterReqMod {
  String? get appId => throw _privateConstructorUsedError;
  @JsonKey(name: "id_token", defaultValue: "")
  String? get idToken => throw _privateConstructorUsedError;
  String? get os => throw _privateConstructorUsedError;
  String? get nativeLingo => throw _privateConstructorUsedError;

  /// Serializes this RegisterReqMod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterReqMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterReqModCopyWith<RegisterReqMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterReqModCopyWith<$Res> {
  factory $RegisterReqModCopyWith(
          RegisterReqMod value, $Res Function(RegisterReqMod) then) =
      _$RegisterReqModCopyWithImpl<$Res, RegisterReqMod>;
  @useResult
  $Res call(
      {String? appId,
      @JsonKey(name: "id_token", defaultValue: "") String? idToken,
      String? os,
      String? nativeLingo});
}

/// @nodoc
class _$RegisterReqModCopyWithImpl<$Res, $Val extends RegisterReqMod>
    implements $RegisterReqModCopyWith<$Res> {
  _$RegisterReqModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterReqMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? idToken = freezed,
    Object? os = freezed,
    Object? nativeLingo = freezed,
  }) {
    return _then(_value.copyWith(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      nativeLingo: freezed == nativeLingo
          ? _value.nativeLingo
          : nativeLingo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterReqModImplCopyWith<$Res>
    implements $RegisterReqModCopyWith<$Res> {
  factory _$$RegisterReqModImplCopyWith(_$RegisterReqModImpl value,
          $Res Function(_$RegisterReqModImpl) then) =
      __$$RegisterReqModImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? appId,
      @JsonKey(name: "id_token", defaultValue: "") String? idToken,
      String? os,
      String? nativeLingo});
}

/// @nodoc
class __$$RegisterReqModImplCopyWithImpl<$Res>
    extends _$RegisterReqModCopyWithImpl<$Res, _$RegisterReqModImpl>
    implements _$$RegisterReqModImplCopyWith<$Res> {
  __$$RegisterReqModImplCopyWithImpl(
      _$RegisterReqModImpl _value, $Res Function(_$RegisterReqModImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReqMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? idToken = freezed,
    Object? os = freezed,
    Object? nativeLingo = freezed,
  }) {
    return _then(_$RegisterReqModImpl(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      nativeLingo: freezed == nativeLingo
          ? _value.nativeLingo
          : nativeLingo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterReqModImpl implements _RegisterReqMod {
  _$RegisterReqModImpl(
      {this.appId,
      @JsonKey(name: "id_token", defaultValue: "") this.idToken,
      this.os,
      this.nativeLingo});

  factory _$RegisterReqModImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterReqModImplFromJson(json);

  @override
  final String? appId;
  @override
  @JsonKey(name: "id_token", defaultValue: "")
  final String? idToken;
  @override
  final String? os;
  @override
  final String? nativeLingo;

  @override
  String toString() {
    return 'RegisterReqMod(appId: $appId, idToken: $idToken, os: $os, nativeLingo: $nativeLingo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterReqModImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.nativeLingo, nativeLingo) ||
                other.nativeLingo == nativeLingo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appId, idToken, os, nativeLingo);

  /// Create a copy of RegisterReqMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterReqModImplCopyWith<_$RegisterReqModImpl> get copyWith =>
      __$$RegisterReqModImplCopyWithImpl<_$RegisterReqModImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterReqModImplToJson(
      this,
    );
  }
}

abstract class _RegisterReqMod implements RegisterReqMod {
  factory _RegisterReqMod(
      {final String? appId,
      @JsonKey(name: "id_token", defaultValue: "") final String? idToken,
      final String? os,
      final String? nativeLingo}) = _$RegisterReqModImpl;

  factory _RegisterReqMod.fromJson(Map<String, dynamic> json) =
      _$RegisterReqModImpl.fromJson;

  @override
  String? get appId;
  @override
  @JsonKey(name: "id_token", defaultValue: "")
  String? get idToken;
  @override
  String? get os;
  @override
  String? get nativeLingo;

  /// Create a copy of RegisterReqMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterReqModImplCopyWith<_$RegisterReqModImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
