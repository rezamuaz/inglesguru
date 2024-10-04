// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_cache.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CacheHive _$CacheHiveFromJson(Map<String, dynamic> json) {
  return _CacheHive.fromJson(json);
}

/// @nodoc
mixin _$CacheHive {
  @JsonKey(name: "location", defaultValue: "")
  @HiveField(0)
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at", defaultValue: 0)
  @HiveField(1)
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "etag", defaultValue: "")
  @HiveField(2)
  String? get etag => throw _privateConstructorUsedError;

  /// Serializes this CacheHive to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CacheHive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheHiveCopyWith<CacheHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheHiveCopyWith<$Res> {
  factory $CacheHiveCopyWith(CacheHive value, $Res Function(CacheHive) then) =
      _$CacheHiveCopyWithImpl<$Res, CacheHive>;
  @useResult
  $Res call(
      {@JsonKey(name: "location", defaultValue: "")
      @HiveField(0)
      String? location,
      @JsonKey(name: "created_at", defaultValue: 0)
      @HiveField(1)
      int? createdAt,
      @JsonKey(name: "etag", defaultValue: "") @HiveField(2) String? etag});
}

/// @nodoc
class _$CacheHiveCopyWithImpl<$Res, $Val extends CacheHive>
    implements $CacheHiveCopyWith<$Res> {
  _$CacheHiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheHive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? etag = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CacheHiveImplCopyWith<$Res>
    implements $CacheHiveCopyWith<$Res> {
  factory _$$CacheHiveImplCopyWith(
          _$CacheHiveImpl value, $Res Function(_$CacheHiveImpl) then) =
      __$$CacheHiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "location", defaultValue: "")
      @HiveField(0)
      String? location,
      @JsonKey(name: "created_at", defaultValue: 0)
      @HiveField(1)
      int? createdAt,
      @JsonKey(name: "etag", defaultValue: "") @HiveField(2) String? etag});
}

/// @nodoc
class __$$CacheHiveImplCopyWithImpl<$Res>
    extends _$CacheHiveCopyWithImpl<$Res, _$CacheHiveImpl>
    implements _$$CacheHiveImplCopyWith<$Res> {
  __$$CacheHiveImplCopyWithImpl(
      _$CacheHiveImpl _value, $Res Function(_$CacheHiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of CacheHive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? etag = freezed,
  }) {
    return _then(_$CacheHiveImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'CacheHiveAdapter')
class _$CacheHiveImpl implements _CacheHive {
  _$CacheHiveImpl(
      {@JsonKey(name: "location", defaultValue: "") @HiveField(0) this.location,
      @JsonKey(name: "created_at", defaultValue: 0)
      @HiveField(1)
      this.createdAt,
      @JsonKey(name: "etag", defaultValue: "") @HiveField(2) this.etag});

  factory _$CacheHiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$CacheHiveImplFromJson(json);

  @override
  @JsonKey(name: "location", defaultValue: "")
  @HiveField(0)
  final String? location;
  @override
  @JsonKey(name: "created_at", defaultValue: 0)
  @HiveField(1)
  final int? createdAt;
  @override
  @JsonKey(name: "etag", defaultValue: "")
  @HiveField(2)
  final String? etag;

  @override
  String toString() {
    return 'CacheHive(location: $location, createdAt: $createdAt, etag: $etag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheHiveImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.etag, etag) || other.etag == etag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, createdAt, etag);

  /// Create a copy of CacheHive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheHiveImplCopyWith<_$CacheHiveImpl> get copyWith =>
      __$$CacheHiveImplCopyWithImpl<_$CacheHiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheHiveImplToJson(
      this,
    );
  }
}

abstract class _CacheHive implements CacheHive {
  factory _CacheHive(
      {@JsonKey(name: "location", defaultValue: "")
      @HiveField(0)
      final String? location,
      @JsonKey(name: "created_at", defaultValue: 0)
      @HiveField(1)
      final int? createdAt,
      @JsonKey(name: "etag", defaultValue: "")
      @HiveField(2)
      final String? etag}) = _$CacheHiveImpl;

  factory _CacheHive.fromJson(Map<String, dynamic> json) =
      _$CacheHiveImpl.fromJson;

  @override
  @JsonKey(name: "location", defaultValue: "")
  @HiveField(0)
  String? get location;
  @override
  @JsonKey(name: "created_at", defaultValue: 0)
  @HiveField(1)
  int? get createdAt;
  @override
  @JsonKey(name: "etag", defaultValue: "")
  @HiveField(2)
  String? get etag;

  /// Create a copy of CacheHive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheHiveImplCopyWith<_$CacheHiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
