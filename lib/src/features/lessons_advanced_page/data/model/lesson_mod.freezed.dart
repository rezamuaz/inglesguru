// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonMod _$LessonModFromJson(Map<String, dynamic> json) {
  return _LessonMod.fromJson(json);
}

/// @nodoc
mixin _$LessonMod {
  LessonItem get intro => throw _privateConstructorUsedError;
  List<LessonItem> get result => throw _privateConstructorUsedError;

  /// Serializes this LessonMod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonModCopyWith<LessonMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonModCopyWith<$Res> {
  factory $LessonModCopyWith(LessonMod value, $Res Function(LessonMod) then) =
      _$LessonModCopyWithImpl<$Res, LessonMod>;
  @useResult
  $Res call({LessonItem intro, List<LessonItem> result});

  $LessonItemCopyWith<$Res> get intro;
}

/// @nodoc
class _$LessonModCopyWithImpl<$Res, $Val extends LessonMod>
    implements $LessonModCopyWith<$Res> {
  _$LessonModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intro = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as LessonItem,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<LessonItem>,
    ) as $Val);
  }

  /// Create a copy of LessonMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonItemCopyWith<$Res> get intro {
    return $LessonItemCopyWith<$Res>(_value.intro, (value) {
      return _then(_value.copyWith(intro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonModImplCopyWith<$Res>
    implements $LessonModCopyWith<$Res> {
  factory _$$LessonModImplCopyWith(
          _$LessonModImpl value, $Res Function(_$LessonModImpl) then) =
      __$$LessonModImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LessonItem intro, List<LessonItem> result});

  @override
  $LessonItemCopyWith<$Res> get intro;
}

/// @nodoc
class __$$LessonModImplCopyWithImpl<$Res>
    extends _$LessonModCopyWithImpl<$Res, _$LessonModImpl>
    implements _$$LessonModImplCopyWith<$Res> {
  __$$LessonModImplCopyWithImpl(
      _$LessonModImpl _value, $Res Function(_$LessonModImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intro = null,
    Object? result = null,
  }) {
    return _then(_$LessonModImpl(
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as LessonItem,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<LessonItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonModImpl implements _LessonMod {
  _$LessonModImpl(
      {this.intro = const LessonItem(),
      final List<LessonItem> result = const []})
      : _result = result;

  factory _$LessonModImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonModImplFromJson(json);

  @override
  @JsonKey()
  final LessonItem intro;
  final List<LessonItem> _result;
  @override
  @JsonKey()
  List<LessonItem> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'LessonMod(intro: $intro, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonModImpl &&
            (identical(other.intro, intro) || other.intro == intro) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, intro, const DeepCollectionEquality().hash(_result));

  /// Create a copy of LessonMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonModImplCopyWith<_$LessonModImpl> get copyWith =>
      __$$LessonModImplCopyWithImpl<_$LessonModImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonModImplToJson(
      this,
    );
  }
}

abstract class _LessonMod implements LessonMod {
  factory _LessonMod({final LessonItem intro, final List<LessonItem> result}) =
      _$LessonModImpl;

  factory _LessonMod.fromJson(Map<String, dynamic> json) =
      _$LessonModImpl.fromJson;

  @override
  LessonItem get intro;
  @override
  List<LessonItem> get result;

  /// Create a copy of LessonMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonModImplCopyWith<_$LessonModImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonItem _$LessonItemFromJson(Map<String, dynamic> json) {
  return _LessonItem.fromJson(json);
}

/// @nodoc
mixin _$LessonItem {
  @JsonKey(name: "lesson_code")
  String? get lessonCode => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_id")
  int? get lessonId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "unlocked")
  bool? get unlocked => throw _privateConstructorUsedError;

  /// Serializes this LessonItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonItemCopyWith<LessonItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonItemCopyWith<$Res> {
  factory $LessonItemCopyWith(
          LessonItem value, $Res Function(LessonItem) then) =
      _$LessonItemCopyWithImpl<$Res, LessonItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "lesson_code") String? lessonCode,
      @JsonKey(name: "lesson_id") int? lessonId,
      String? title,
      String? image,
      String? description,
      @JsonKey(name: "updated_at") int? updatedAt,
      @JsonKey(name: "unlocked") bool? unlocked});
}

/// @nodoc
class _$LessonItemCopyWithImpl<$Res, $Val extends LessonItem>
    implements $LessonItemCopyWith<$Res> {
  _$LessonItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonCode = freezed,
    Object? lessonId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? unlocked = freezed,
  }) {
    return _then(_value.copyWith(
      lessonCode: freezed == lessonCode
          ? _value.lessonCode
          : lessonCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      unlocked: freezed == unlocked
          ? _value.unlocked
          : unlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonItemImplCopyWith<$Res>
    implements $LessonItemCopyWith<$Res> {
  factory _$$LessonItemImplCopyWith(
          _$LessonItemImpl value, $Res Function(_$LessonItemImpl) then) =
      __$$LessonItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lesson_code") String? lessonCode,
      @JsonKey(name: "lesson_id") int? lessonId,
      String? title,
      String? image,
      String? description,
      @JsonKey(name: "updated_at") int? updatedAt,
      @JsonKey(name: "unlocked") bool? unlocked});
}

/// @nodoc
class __$$LessonItemImplCopyWithImpl<$Res>
    extends _$LessonItemCopyWithImpl<$Res, _$LessonItemImpl>
    implements _$$LessonItemImplCopyWith<$Res> {
  __$$LessonItemImplCopyWithImpl(
      _$LessonItemImpl _value, $Res Function(_$LessonItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonCode = freezed,
    Object? lessonId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? unlocked = freezed,
  }) {
    return _then(_$LessonItemImpl(
      lessonCode: freezed == lessonCode
          ? _value.lessonCode
          : lessonCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      unlocked: freezed == unlocked
          ? _value.unlocked
          : unlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonItemImpl extends _LessonItem {
  const _$LessonItemImpl(
      {@JsonKey(name: "lesson_code") this.lessonCode = "",
      @JsonKey(name: "lesson_id") this.lessonId = 0,
      this.title = "",
      this.image = "",
      this.description = "",
      @JsonKey(name: "updated_at") this.updatedAt = 0,
      @JsonKey(name: "unlocked") this.unlocked = false})
      : super._();

  factory _$LessonItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonItemImplFromJson(json);

  @override
  @JsonKey(name: "lesson_code")
  final String? lessonCode;
  @override
  @JsonKey(name: "lesson_id")
  final int? lessonId;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? image;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey(name: "updated_at")
  final int? updatedAt;
  @override
  @JsonKey(name: "unlocked")
  final bool? unlocked;

  @override
  String toString() {
    return 'LessonItem(lessonCode: $lessonCode, lessonId: $lessonId, title: $title, image: $image, description: $description, updatedAt: $updatedAt, unlocked: $unlocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonItemImpl &&
            (identical(other.lessonCode, lessonCode) ||
                other.lessonCode == lessonCode) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.unlocked, unlocked) ||
                other.unlocked == unlocked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lessonCode, lessonId, title,
      image, description, updatedAt, unlocked);

  /// Create a copy of LessonItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonItemImplCopyWith<_$LessonItemImpl> get copyWith =>
      __$$LessonItemImplCopyWithImpl<_$LessonItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonItemImplToJson(
      this,
    );
  }
}

abstract class _LessonItem extends LessonItem {
  const factory _LessonItem(
      {@JsonKey(name: "lesson_code") final String? lessonCode,
      @JsonKey(name: "lesson_id") final int? lessonId,
      final String? title,
      final String? image,
      final String? description,
      @JsonKey(name: "updated_at") final int? updatedAt,
      @JsonKey(name: "unlocked") final bool? unlocked}) = _$LessonItemImpl;
  const _LessonItem._() : super._();

  factory _LessonItem.fromJson(Map<String, dynamic> json) =
      _$LessonItemImpl.fromJson;

  @override
  @JsonKey(name: "lesson_code")
  String? get lessonCode;
  @override
  @JsonKey(name: "lesson_id")
  int? get lessonId;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get description;
  @override
  @JsonKey(name: "updated_at")
  int? get updatedAt;
  @override
  @JsonKey(name: "unlocked")
  bool? get unlocked;

  /// Create a copy of LessonItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonItemImplCopyWith<_$LessonItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
