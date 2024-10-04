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

LessonItem _$LessonItemFromJson(Map<String, dynamic> json) {
  return _LessonItem.fromJson(json);
}

/// @nodoc
mixin _$LessonItem {
  @JsonKey(name: "lesson_code", defaultValue: "")
  String? get lessonCode => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_id", defaultValue: 0)
  int? get lessonId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "lesson_code", defaultValue: "") String? lessonCode,
      @JsonKey(name: "lesson_id", defaultValue: 0) int? lessonId,
      String? title,
      String? image});
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
      {@JsonKey(name: "lesson_code", defaultValue: "") String? lessonCode,
      @JsonKey(name: "lesson_id", defaultValue: 0) int? lessonId,
      String? title,
      String? image});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonItemImpl extends _LessonItem {
  _$LessonItemImpl(
      {@JsonKey(name: "lesson_code", defaultValue: "") this.lessonCode,
      @JsonKey(name: "lesson_id", defaultValue: 0) this.lessonId,
      this.title,
      this.image})
      : super._();

  factory _$LessonItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonItemImplFromJson(json);

  @override
  @JsonKey(name: "lesson_code", defaultValue: "")
  final String? lessonCode;
  @override
  @JsonKey(name: "lesson_id", defaultValue: 0)
  final int? lessonId;
  @override
  final String? title;
  @override
  final String? image;

  @override
  String toString() {
    return 'LessonItem(lessonCode: $lessonCode, lessonId: $lessonId, title: $title, image: $image)';
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
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lessonCode, lessonId, title, image);

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
  factory _LessonItem(
      {@JsonKey(name: "lesson_code", defaultValue: "") final String? lessonCode,
      @JsonKey(name: "lesson_id", defaultValue: 0) final int? lessonId,
      final String? title,
      final String? image}) = _$LessonItemImpl;
  _LessonItem._() : super._();

  factory _LessonItem.fromJson(Map<String, dynamic> json) =
      _$LessonItemImpl.fromJson;

  @override
  @JsonKey(name: "lesson_code", defaultValue: "")
  String? get lessonCode;
  @override
  @JsonKey(name: "lesson_id", defaultValue: 0)
  int? get lessonId;
  @override
  String? get title;
  @override
  String? get image;

  /// Create a copy of LessonItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonItemImplCopyWith<_$LessonItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
