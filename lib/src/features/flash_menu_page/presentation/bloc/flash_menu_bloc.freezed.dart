// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlashMenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashMenuEventCopyWith<$Res> {
  factory $FlashMenuEventCopyWith(
          FlashMenuEvent value, $Res Function(FlashMenuEvent) then) =
      _$FlashMenuEventCopyWithImpl<$Res, FlashMenuEvent>;
}

/// @nodoc
class _$FlashMenuEventCopyWithImpl<$Res, $Val extends FlashMenuEvent>
    implements $FlashMenuEventCopyWith<$Res> {
  _$FlashMenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashMenuEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FlashMenuEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashMenuEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FlashMenuEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FlashMenuEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$FlashMenuState {
  List<LessonItem> get lessons => throw _privateConstructorUsedError;
  FlashStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of FlashMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashMenuStateCopyWith<FlashMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashMenuStateCopyWith<$Res> {
  factory $FlashMenuStateCopyWith(
          FlashMenuState value, $Res Function(FlashMenuState) then) =
      _$FlashMenuStateCopyWithImpl<$Res, FlashMenuState>;
  @useResult
  $Res call({List<LessonItem> lessons, FlashStatus status});
}

/// @nodoc
class _$FlashMenuStateCopyWithImpl<$Res, $Val extends FlashMenuState>
    implements $FlashMenuStateCopyWith<$Res> {
  _$FlashMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonItem>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FlashStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashMenuStateImplCopyWith<$Res>
    implements $FlashMenuStateCopyWith<$Res> {
  factory _$$FlashMenuStateImplCopyWith(_$FlashMenuStateImpl value,
          $Res Function(_$FlashMenuStateImpl) then) =
      __$$FlashMenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LessonItem> lessons, FlashStatus status});
}

/// @nodoc
class __$$FlashMenuStateImplCopyWithImpl<$Res>
    extends _$FlashMenuStateCopyWithImpl<$Res, _$FlashMenuStateImpl>
    implements _$$FlashMenuStateImplCopyWith<$Res> {
  __$$FlashMenuStateImplCopyWithImpl(
      _$FlashMenuStateImpl _value, $Res Function(_$FlashMenuStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
    Object? status = null,
  }) {
    return _then(_$FlashMenuStateImpl(
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonItem>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FlashStatus,
    ));
  }
}

/// @nodoc

class _$FlashMenuStateImpl implements _FlashMenuState {
  const _$FlashMenuStateImpl(
      {final List<LessonItem> lessons = const [],
      this.status = FlashStatus.initial})
      : _lessons = lessons;

  final List<LessonItem> _lessons;
  @override
  @JsonKey()
  List<LessonItem> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  @JsonKey()
  final FlashStatus status;

  @override
  String toString() {
    return 'FlashMenuState(lessons: $lessons, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashMenuStateImpl &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lessons), status);

  /// Create a copy of FlashMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashMenuStateImplCopyWith<_$FlashMenuStateImpl> get copyWith =>
      __$$FlashMenuStateImplCopyWithImpl<_$FlashMenuStateImpl>(
          this, _$identity);
}

abstract class _FlashMenuState implements FlashMenuState {
  const factory _FlashMenuState(
      {final List<LessonItem> lessons,
      final FlashStatus status}) = _$FlashMenuStateImpl;

  @override
  List<LessonItem> get lessons;
  @override
  FlashStatus get status;

  /// Create a copy of FlashMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashMenuStateImplCopyWith<_$FlashMenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
