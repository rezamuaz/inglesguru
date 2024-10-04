// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgressMod {
  ProgressStatus? get status => throw _privateConstructorUsedError;

  /// Create a copy of ProgressMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressModCopyWith<ProgressMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressModCopyWith<$Res> {
  factory $ProgressModCopyWith(
          ProgressMod value, $Res Function(ProgressMod) then) =
      _$ProgressModCopyWithImpl<$Res, ProgressMod>;
  @useResult
  $Res call({ProgressStatus? status});
}

/// @nodoc
class _$ProgressModCopyWithImpl<$Res, $Val extends ProgressMod>
    implements $ProgressModCopyWith<$Res> {
  _$ProgressModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProgressStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressModImplCopyWith<$Res>
    implements $ProgressModCopyWith<$Res> {
  factory _$$ProgressModImplCopyWith(
          _$ProgressModImpl value, $Res Function(_$ProgressModImpl) then) =
      __$$ProgressModImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProgressStatus? status});
}

/// @nodoc
class __$$ProgressModImplCopyWithImpl<$Res>
    extends _$ProgressModCopyWithImpl<$Res, _$ProgressModImpl>
    implements _$$ProgressModImplCopyWith<$Res> {
  __$$ProgressModImplCopyWithImpl(
      _$ProgressModImpl _value, $Res Function(_$ProgressModImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$ProgressModImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProgressStatus?,
    ));
  }
}

/// @nodoc

class _$ProgressModImpl implements _ProgressMod {
  _$ProgressModImpl({this.status = ProgressStatus.todo});

  @override
  @JsonKey()
  final ProgressStatus? status;

  @override
  String toString() {
    return 'ProgressMod(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressModImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ProgressMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressModImplCopyWith<_$ProgressModImpl> get copyWith =>
      __$$ProgressModImplCopyWithImpl<_$ProgressModImpl>(this, _$identity);
}

abstract class _ProgressMod implements ProgressMod {
  factory _ProgressMod({final ProgressStatus? status}) = _$ProgressModImpl;

  @override
  ProgressStatus? get status;

  /// Create a copy of ProgressMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressModImplCopyWith<_$ProgressModImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
