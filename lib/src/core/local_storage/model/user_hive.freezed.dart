// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_hive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserHive _$UserHiveFromJson(Map<String, dynamic> json) {
  return _UserHive.fromJson(json);
}

/// @nodoc
mixin _$UserHive {
  @JsonKey(name: "id", defaultValue: "")
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "id_google", defaultValue: "")
  @HiveField(1)
  String? get idGoogle => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name", defaultValue: "")
  @HiveField(2)
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "photo_url", defaultValue: "")
  @HiveField(3)
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "email", defaultValue: "")
  @HiveField(4)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "role", defaultValue: [])
  @HiveField(5)
  List<String>? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token", defaultValue: "")
  @HiveField(6)
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token", defaultValue: "")
  @HiveField(7)
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this UserHive to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHiveCopyWith<UserHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHiveCopyWith<$Res> {
  factory $UserHiveCopyWith(UserHive value, $Res Function(UserHive) then) =
      _$UserHiveCopyWithImpl<$Res, UserHive>;
  @useResult
  $Res call(
      {@JsonKey(name: "id", defaultValue: "") @HiveField(0) String? id,
      @JsonKey(name: "id_google", defaultValue: "")
      @HiveField(1)
      String? idGoogle,
      @JsonKey(name: "display_name", defaultValue: "")
      @HiveField(2)
      String? displayName,
      @JsonKey(name: "photo_url", defaultValue: "")
      @HiveField(3)
      String? photoUrl,
      @JsonKey(name: "email", defaultValue: "") @HiveField(4) String? email,
      @JsonKey(name: "role", defaultValue: []) @HiveField(5) List<String>? role,
      @JsonKey(name: "access_token", defaultValue: "")
      @HiveField(6)
      String? accessToken,
      @JsonKey(name: "refresh_token", defaultValue: "")
      @HiveField(7)
      String? refreshToken});
}

/// @nodoc
class _$UserHiveCopyWithImpl<$Res, $Val extends UserHive>
    implements $UserHiveCopyWith<$Res> {
  _$UserHiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idGoogle = freezed,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idGoogle: freezed == idGoogle
          ? _value.idGoogle
          : idGoogle // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserHiveImplCopyWith<$Res>
    implements $UserHiveCopyWith<$Res> {
  factory _$$UserHiveImplCopyWith(
          _$UserHiveImpl value, $Res Function(_$UserHiveImpl) then) =
      __$$UserHiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id", defaultValue: "") @HiveField(0) String? id,
      @JsonKey(name: "id_google", defaultValue: "")
      @HiveField(1)
      String? idGoogle,
      @JsonKey(name: "display_name", defaultValue: "")
      @HiveField(2)
      String? displayName,
      @JsonKey(name: "photo_url", defaultValue: "")
      @HiveField(3)
      String? photoUrl,
      @JsonKey(name: "email", defaultValue: "") @HiveField(4) String? email,
      @JsonKey(name: "role", defaultValue: []) @HiveField(5) List<String>? role,
      @JsonKey(name: "access_token", defaultValue: "")
      @HiveField(6)
      String? accessToken,
      @JsonKey(name: "refresh_token", defaultValue: "")
      @HiveField(7)
      String? refreshToken});
}

/// @nodoc
class __$$UserHiveImplCopyWithImpl<$Res>
    extends _$UserHiveCopyWithImpl<$Res, _$UserHiveImpl>
    implements _$$UserHiveImplCopyWith<$Res> {
  __$$UserHiveImplCopyWithImpl(
      _$UserHiveImpl _value, $Res Function(_$UserHiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idGoogle = freezed,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$UserHiveImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idGoogle: freezed == idGoogle
          ? _value.idGoogle
          : idGoogle // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'UserHiveAdapter')
class _$UserHiveImpl implements _UserHive {
  _$UserHiveImpl(
      {@JsonKey(name: "id", defaultValue: "") @HiveField(0) this.id,
      @JsonKey(name: "id_google", defaultValue: "") @HiveField(1) this.idGoogle,
      @JsonKey(name: "display_name", defaultValue: "")
      @HiveField(2)
      this.displayName,
      @JsonKey(name: "photo_url", defaultValue: "") @HiveField(3) this.photoUrl,
      @JsonKey(name: "email", defaultValue: "") @HiveField(4) this.email,
      @JsonKey(name: "role", defaultValue: [])
      @HiveField(5)
      final List<String>? role,
      @JsonKey(name: "access_token", defaultValue: "")
      @HiveField(6)
      this.accessToken,
      @JsonKey(name: "refresh_token", defaultValue: "")
      @HiveField(7)
      this.refreshToken})
      : _role = role;

  factory _$UserHiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHiveImplFromJson(json);

  @override
  @JsonKey(name: "id", defaultValue: "")
  @HiveField(0)
  final String? id;
  @override
  @JsonKey(name: "id_google", defaultValue: "")
  @HiveField(1)
  final String? idGoogle;
  @override
  @JsonKey(name: "display_name", defaultValue: "")
  @HiveField(2)
  final String? displayName;
  @override
  @JsonKey(name: "photo_url", defaultValue: "")
  @HiveField(3)
  final String? photoUrl;
  @override
  @JsonKey(name: "email", defaultValue: "")
  @HiveField(4)
  final String? email;
  final List<String>? _role;
  @override
  @JsonKey(name: "role", defaultValue: [])
  @HiveField(5)
  List<String>? get role {
    final value = _role;
    if (value == null) return null;
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "access_token", defaultValue: "")
  @HiveField(6)
  final String? accessToken;
  @override
  @JsonKey(name: "refresh_token", defaultValue: "")
  @HiveField(7)
  final String? refreshToken;

  @override
  String toString() {
    return 'UserHive(id: $id, idGoogle: $idGoogle, displayName: $displayName, photoUrl: $photoUrl, email: $email, role: $role, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHiveImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idGoogle, idGoogle) ||
                other.idGoogle == idGoogle) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._role, _role) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      idGoogle,
      displayName,
      photoUrl,
      email,
      const DeepCollectionEquality().hash(_role),
      accessToken,
      refreshToken);

  /// Create a copy of UserHive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHiveImplCopyWith<_$UserHiveImpl> get copyWith =>
      __$$UserHiveImplCopyWithImpl<_$UserHiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHiveImplToJson(
      this,
    );
  }
}

abstract class _UserHive implements UserHive {
  factory _UserHive(
      {@JsonKey(name: "id", defaultValue: "") @HiveField(0) final String? id,
      @JsonKey(name: "id_google", defaultValue: "")
      @HiveField(1)
      final String? idGoogle,
      @JsonKey(name: "display_name", defaultValue: "")
      @HiveField(2)
      final String? displayName,
      @JsonKey(name: "photo_url", defaultValue: "")
      @HiveField(3)
      final String? photoUrl,
      @JsonKey(name: "email", defaultValue: "")
      @HiveField(4)
      final String? email,
      @JsonKey(name: "role", defaultValue: [])
      @HiveField(5)
      final List<String>? role,
      @JsonKey(name: "access_token", defaultValue: "")
      @HiveField(6)
      final String? accessToken,
      @JsonKey(name: "refresh_token", defaultValue: "")
      @HiveField(7)
      final String? refreshToken}) = _$UserHiveImpl;

  factory _UserHive.fromJson(Map<String, dynamic> json) =
      _$UserHiveImpl.fromJson;

  @override
  @JsonKey(name: "id", defaultValue: "")
  @HiveField(0)
  String? get id;
  @override
  @JsonKey(name: "id_google", defaultValue: "")
  @HiveField(1)
  String? get idGoogle;
  @override
  @JsonKey(name: "display_name", defaultValue: "")
  @HiveField(2)
  String? get displayName;
  @override
  @JsonKey(name: "photo_url", defaultValue: "")
  @HiveField(3)
  String? get photoUrl;
  @override
  @JsonKey(name: "email", defaultValue: "")
  @HiveField(4)
  String? get email;
  @override
  @JsonKey(name: "role", defaultValue: [])
  @HiveField(5)
  List<String>? get role;
  @override
  @JsonKey(name: "access_token", defaultValue: "")
  @HiveField(6)
  String? get accessToken;
  @override
  @JsonKey(name: "refresh_token", defaultValue: "")
  @HiveField(7)
  String? get refreshToken;

  /// Create a copy of UserHive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHiveImplCopyWith<_$UserHiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
