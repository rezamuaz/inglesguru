// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonData _$LessonDataFromJson(Map<String, dynamic> json) {
  return _LessonData.fromJson(json);
}

/// @nodoc
mixin _$LessonData {
  @JsonKey(name: "scene_url", defaultValue: "")
  String? get sceneUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "tutor_url", defaultValue: "")
  String? get tutorUrl => throw _privateConstructorUsedError;
  List<LessonPage> get pages => throw _privateConstructorUsedError;

  /// Serializes this LessonData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonDataCopyWith<LessonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDataCopyWith<$Res> {
  factory $LessonDataCopyWith(
          LessonData value, $Res Function(LessonData) then) =
      _$LessonDataCopyWithImpl<$Res, LessonData>;
  @useResult
  $Res call(
      {@JsonKey(name: "scene_url", defaultValue: "") String? sceneUrl,
      @JsonKey(name: "tutor_url", defaultValue: "") String? tutorUrl,
      List<LessonPage> pages});
}

/// @nodoc
class _$LessonDataCopyWithImpl<$Res, $Val extends LessonData>
    implements $LessonDataCopyWith<$Res> {
  _$LessonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sceneUrl = freezed,
    Object? tutorUrl = freezed,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      sceneUrl: freezed == sceneUrl
          ? _value.sceneUrl
          : sceneUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorUrl: freezed == tutorUrl
          ? _value.tutorUrl
          : tutorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<LessonPage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonDataImplCopyWith<$Res>
    implements $LessonDataCopyWith<$Res> {
  factory _$$LessonDataImplCopyWith(
          _$LessonDataImpl value, $Res Function(_$LessonDataImpl) then) =
      __$$LessonDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "scene_url", defaultValue: "") String? sceneUrl,
      @JsonKey(name: "tutor_url", defaultValue: "") String? tutorUrl,
      List<LessonPage> pages});
}

/// @nodoc
class __$$LessonDataImplCopyWithImpl<$Res>
    extends _$LessonDataCopyWithImpl<$Res, _$LessonDataImpl>
    implements _$$LessonDataImplCopyWith<$Res> {
  __$$LessonDataImplCopyWithImpl(
      _$LessonDataImpl _value, $Res Function(_$LessonDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sceneUrl = freezed,
    Object? tutorUrl = freezed,
    Object? pages = null,
  }) {
    return _then(_$LessonDataImpl(
      sceneUrl: freezed == sceneUrl
          ? _value.sceneUrl
          : sceneUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorUrl: freezed == tutorUrl
          ? _value.tutorUrl
          : tutorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<LessonPage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonDataImpl implements _LessonData {
  const _$LessonDataImpl(
      {@JsonKey(name: "scene_url", defaultValue: "") this.sceneUrl,
      @JsonKey(name: "tutor_url", defaultValue: "") this.tutorUrl,
      final List<LessonPage> pages = const []})
      : _pages = pages;

  factory _$LessonDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonDataImplFromJson(json);

  @override
  @JsonKey(name: "scene_url", defaultValue: "")
  final String? sceneUrl;
  @override
  @JsonKey(name: "tutor_url", defaultValue: "")
  final String? tutorUrl;
  final List<LessonPage> _pages;
  @override
  @JsonKey()
  List<LessonPage> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'LessonData(sceneUrl: $sceneUrl, tutorUrl: $tutorUrl, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonDataImpl &&
            (identical(other.sceneUrl, sceneUrl) ||
                other.sceneUrl == sceneUrl) &&
            (identical(other.tutorUrl, tutorUrl) ||
                other.tutorUrl == tutorUrl) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sceneUrl, tutorUrl,
      const DeepCollectionEquality().hash(_pages));

  /// Create a copy of LessonData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonDataImplCopyWith<_$LessonDataImpl> get copyWith =>
      __$$LessonDataImplCopyWithImpl<_$LessonDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonDataImplToJson(
      this,
    );
  }
}

abstract class _LessonData implements LessonData {
  const factory _LessonData(
      {@JsonKey(name: "scene_url", defaultValue: "") final String? sceneUrl,
      @JsonKey(name: "tutor_url", defaultValue: "") final String? tutorUrl,
      final List<LessonPage> pages}) = _$LessonDataImpl;

  factory _LessonData.fromJson(Map<String, dynamic> json) =
      _$LessonDataImpl.fromJson;

  @override
  @JsonKey(name: "scene_url", defaultValue: "")
  String? get sceneUrl;
  @override
  @JsonKey(name: "tutor_url", defaultValue: "")
  String? get tutorUrl;
  @override
  List<LessonPage> get pages;

  /// Create a copy of LessonData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonDataImplCopyWith<_$LessonDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonPage _$LessonPageFromJson(Map<String, dynamic> json) {
  return _LessonPage.fromJson(json);
}

/// @nodoc
mixin _$LessonPage {
  ///Number of Page Comic
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "page_id")
  int get pageId => throw _privateConstructorUsedError;

  ///Step of Page (Normaly 2 Step/Page)
  List<LessonStep>? get steps => throw _privateConstructorUsedError;

  /// Serializes this LessonPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonPageCopyWith<LessonPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonPageCopyWith<$Res> {
  factory $LessonPageCopyWith(
          LessonPage value, $Res Function(LessonPage) then) =
      _$LessonPageCopyWithImpl<$Res, LessonPage>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: "page_id") int pageId,
      List<LessonStep>? steps});
}

/// @nodoc
class _$LessonPageCopyWithImpl<$Res, $Val extends LessonPage>
    implements $LessonPageCopyWith<$Res> {
  _$LessonPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageId = null,
    Object? steps = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as int,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<LessonStep>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonPageImplCopyWith<$Res>
    implements $LessonPageCopyWith<$Res> {
  factory _$$LessonPageImplCopyWith(
          _$LessonPageImpl value, $Res Function(_$LessonPageImpl) then) =
      __$$LessonPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: "page_id") int pageId,
      List<LessonStep>? steps});
}

/// @nodoc
class __$$LessonPageImplCopyWithImpl<$Res>
    extends _$LessonPageCopyWithImpl<$Res, _$LessonPageImpl>
    implements _$$LessonPageImplCopyWith<$Res> {
  __$$LessonPageImplCopyWithImpl(
      _$LessonPageImpl _value, $Res Function(_$LessonPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageId = null,
    Object? steps = freezed,
  }) {
    return _then(_$LessonPageImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as int,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<LessonStep>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonPageImpl implements _LessonPage {
  const _$LessonPageImpl(
      {this.page = 0,
      @JsonKey(name: "page_id") this.pageId = 0,
      final List<LessonStep>? steps})
      : _steps = steps;

  factory _$LessonPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonPageImplFromJson(json);

  ///Number of Page Comic
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey(name: "page_id")
  final int pageId;

  ///Step of Page (Normaly 2 Step/Page)
  final List<LessonStep>? _steps;

  ///Step of Page (Normaly 2 Step/Page)
  @override
  List<LessonStep>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LessonPage(page: $page, pageId: $pageId, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonPageImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, pageId, const DeepCollectionEquality().hash(_steps));

  /// Create a copy of LessonPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonPageImplCopyWith<_$LessonPageImpl> get copyWith =>
      __$$LessonPageImplCopyWithImpl<_$LessonPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonPageImplToJson(
      this,
    );
  }
}

abstract class _LessonPage implements LessonPage {
  const factory _LessonPage(
      {final int page,
      @JsonKey(name: "page_id") final int pageId,
      final List<LessonStep>? steps}) = _$LessonPageImpl;

  factory _LessonPage.fromJson(Map<String, dynamic> json) =
      _$LessonPageImpl.fromJson;

  ///Number of Page Comic
  @override
  int get page;
  @override
  @JsonKey(name: "page_id")
  int get pageId;

  ///Step of Page (Normaly 2 Step/Page)
  @override
  List<LessonStep>? get steps;

  /// Create a copy of LessonPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonPageImplCopyWith<_$LessonPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonStep _$LessonStepFromJson(Map<String, dynamic> json) {
  return _LessonStep.fromJson(json);
}

/// @nodoc
mixin _$LessonStep {
  @JsonKey(name: "step")
  int? get step => throw _privateConstructorUsedError;

  ///English Language Comic Character
  @JsonKey(name: "contents")
  LessonContent? get contents => throw _privateConstructorUsedError;
  @JsonKey(name: "assets")
  LessonAssets? get assets => throw _privateConstructorUsedError;

  /// Serializes this LessonStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonStepCopyWith<LessonStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStepCopyWith<$Res> {
  factory $LessonStepCopyWith(
          LessonStep value, $Res Function(LessonStep) then) =
      _$LessonStepCopyWithImpl<$Res, LessonStep>;
  @useResult
  $Res call(
      {@JsonKey(name: "step") int? step,
      @JsonKey(name: "contents") LessonContent? contents,
      @JsonKey(name: "assets") LessonAssets? assets});

  $LessonContentCopyWith<$Res>? get contents;
  $LessonAssetsCopyWith<$Res>? get assets;
}

/// @nodoc
class _$LessonStepCopyWithImpl<$Res, $Val extends LessonStep>
    implements $LessonStepCopyWith<$Res> {
  _$LessonStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = freezed,
    Object? contents = freezed,
    Object? assets = freezed,
  }) {
    return _then(_value.copyWith(
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as LessonContent?,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as LessonAssets?,
    ) as $Val);
  }

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonContentCopyWith<$Res>? get contents {
    if (_value.contents == null) {
      return null;
    }

    return $LessonContentCopyWith<$Res>(_value.contents!, (value) {
      return _then(_value.copyWith(contents: value) as $Val);
    });
  }

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonAssetsCopyWith<$Res>? get assets {
    if (_value.assets == null) {
      return null;
    }

    return $LessonAssetsCopyWith<$Res>(_value.assets!, (value) {
      return _then(_value.copyWith(assets: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonStepImplCopyWith<$Res>
    implements $LessonStepCopyWith<$Res> {
  factory _$$LessonStepImplCopyWith(
          _$LessonStepImpl value, $Res Function(_$LessonStepImpl) then) =
      __$$LessonStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "step") int? step,
      @JsonKey(name: "contents") LessonContent? contents,
      @JsonKey(name: "assets") LessonAssets? assets});

  @override
  $LessonContentCopyWith<$Res>? get contents;
  @override
  $LessonAssetsCopyWith<$Res>? get assets;
}

/// @nodoc
class __$$LessonStepImplCopyWithImpl<$Res>
    extends _$LessonStepCopyWithImpl<$Res, _$LessonStepImpl>
    implements _$$LessonStepImplCopyWith<$Res> {
  __$$LessonStepImplCopyWithImpl(
      _$LessonStepImpl _value, $Res Function(_$LessonStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = freezed,
    Object? contents = freezed,
    Object? assets = freezed,
  }) {
    return _then(_$LessonStepImpl(
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as LessonContent?,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as LessonAssets?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonStepImpl implements _LessonStep {
  const _$LessonStepImpl(
      {@JsonKey(name: "step") this.step,
      @JsonKey(name: "contents") this.contents,
      @JsonKey(name: "assets") this.assets});

  factory _$LessonStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonStepImplFromJson(json);

  @override
  @JsonKey(name: "step")
  final int? step;

  ///English Language Comic Character
  @override
  @JsonKey(name: "contents")
  final LessonContent? contents;
  @override
  @JsonKey(name: "assets")
  final LessonAssets? assets;

  @override
  String toString() {
    return 'LessonStep(step: $step, contents: $contents, assets: $assets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonStepImpl &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.assets, assets) || other.assets == assets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, step, contents, assets);

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonStepImplCopyWith<_$LessonStepImpl> get copyWith =>
      __$$LessonStepImplCopyWithImpl<_$LessonStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonStepImplToJson(
      this,
    );
  }
}

abstract class _LessonStep implements LessonStep {
  const factory _LessonStep(
      {@JsonKey(name: "step") final int? step,
      @JsonKey(name: "contents") final LessonContent? contents,
      @JsonKey(name: "assets") final LessonAssets? assets}) = _$LessonStepImpl;

  factory _LessonStep.fromJson(Map<String, dynamic> json) =
      _$LessonStepImpl.fromJson;

  @override
  @JsonKey(name: "step")
  int? get step;

  ///English Language Comic Character
  @override
  @JsonKey(name: "contents")
  LessonContent? get contents;
  @override
  @JsonKey(name: "assets")
  LessonAssets? get assets;

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonStepImplCopyWith<_$LessonStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonAssets _$LessonAssetsFromJson(Map<String, dynamic> json) {
  return _LessonAssets.fromJson(json);
}

/// @nodoc
mixin _$LessonAssets {
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "voice")
  String? get voice => throw _privateConstructorUsedError;

  /// Serializes this LessonAssets to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonAssets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonAssetsCopyWith<LessonAssets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonAssetsCopyWith<$Res> {
  factory $LessonAssetsCopyWith(
          LessonAssets value, $Res Function(LessonAssets) then) =
      _$LessonAssetsCopyWithImpl<$Res, LessonAssets>;
  @useResult
  $Res call(
      {@JsonKey(name: "image") String? image,
      @JsonKey(name: "voice") String? voice});
}

/// @nodoc
class _$LessonAssetsCopyWithImpl<$Res, $Val extends LessonAssets>
    implements $LessonAssetsCopyWith<$Res> {
  _$LessonAssetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonAssets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? voice = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      voice: freezed == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonAssetsImplCopyWith<$Res>
    implements $LessonAssetsCopyWith<$Res> {
  factory _$$LessonAssetsImplCopyWith(
          _$LessonAssetsImpl value, $Res Function(_$LessonAssetsImpl) then) =
      __$$LessonAssetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "image") String? image,
      @JsonKey(name: "voice") String? voice});
}

/// @nodoc
class __$$LessonAssetsImplCopyWithImpl<$Res>
    extends _$LessonAssetsCopyWithImpl<$Res, _$LessonAssetsImpl>
    implements _$$LessonAssetsImplCopyWith<$Res> {
  __$$LessonAssetsImplCopyWithImpl(
      _$LessonAssetsImpl _value, $Res Function(_$LessonAssetsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonAssets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? voice = freezed,
  }) {
    return _then(_$LessonAssetsImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      voice: freezed == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonAssetsImpl implements _LessonAssets {
  const _$LessonAssetsImpl(
      {@JsonKey(name: "image") this.image, @JsonKey(name: "voice") this.voice});

  factory _$LessonAssetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonAssetsImplFromJson(json);

  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "voice")
  final String? voice;

  @override
  String toString() {
    return 'LessonAssets(image: $image, voice: $voice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonAssetsImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.voice, voice) || other.voice == voice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, voice);

  /// Create a copy of LessonAssets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonAssetsImplCopyWith<_$LessonAssetsImpl> get copyWith =>
      __$$LessonAssetsImplCopyWithImpl<_$LessonAssetsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonAssetsImplToJson(
      this,
    );
  }
}

abstract class _LessonAssets implements LessonAssets {
  const factory _LessonAssets(
      {@JsonKey(name: "image") final String? image,
      @JsonKey(name: "voice") final String? voice}) = _$LessonAssetsImpl;

  factory _LessonAssets.fromJson(Map<String, dynamic> json) =
      _$LessonAssetsImpl.fromJson;

  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "voice")
  String? get voice;

  /// Create a copy of LessonAssets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonAssetsImplCopyWith<_$LessonAssetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonContent _$LessonContentFromJson(Map<String, dynamic> json) {
  return _LessonContent.fromJson(json);
}

/// @nodoc
mixin _$LessonContent {
  @JsonKey(name: "primary_id")
  int? get primaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_lang")
  String? get primaryLang => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_id")
  int? get secondaryId => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_lang")
  String? get secondaryLang => throw _privateConstructorUsedError;

  /// Serializes this LessonContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonContentCopyWith<LessonContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonContentCopyWith<$Res> {
  factory $LessonContentCopyWith(
          LessonContent value, $Res Function(LessonContent) then) =
      _$LessonContentCopyWithImpl<$Res, LessonContent>;
  @useResult
  $Res call(
      {@JsonKey(name: "primary_id") int? primaryId,
      @JsonKey(name: "primary_lang") String? primaryLang,
      @JsonKey(name: "secondary_id") int? secondaryId,
      @JsonKey(name: "secondary_lang") String? secondaryLang});
}

/// @nodoc
class _$LessonContentCopyWithImpl<$Res, $Val extends LessonContent>
    implements $LessonContentCopyWith<$Res> {
  _$LessonContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryId = freezed,
    Object? primaryLang = freezed,
    Object? secondaryId = freezed,
    Object? secondaryLang = freezed,
  }) {
    return _then(_value.copyWith(
      primaryId: freezed == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      primaryLang: freezed == primaryLang
          ? _value.primaryLang
          : primaryLang // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryId: freezed == secondaryId
          ? _value.secondaryId
          : secondaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      secondaryLang: freezed == secondaryLang
          ? _value.secondaryLang
          : secondaryLang // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonContentImplCopyWith<$Res>
    implements $LessonContentCopyWith<$Res> {
  factory _$$LessonContentImplCopyWith(
          _$LessonContentImpl value, $Res Function(_$LessonContentImpl) then) =
      __$$LessonContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "primary_id") int? primaryId,
      @JsonKey(name: "primary_lang") String? primaryLang,
      @JsonKey(name: "secondary_id") int? secondaryId,
      @JsonKey(name: "secondary_lang") String? secondaryLang});
}

/// @nodoc
class __$$LessonContentImplCopyWithImpl<$Res>
    extends _$LessonContentCopyWithImpl<$Res, _$LessonContentImpl>
    implements _$$LessonContentImplCopyWith<$Res> {
  __$$LessonContentImplCopyWithImpl(
      _$LessonContentImpl _value, $Res Function(_$LessonContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryId = freezed,
    Object? primaryLang = freezed,
    Object? secondaryId = freezed,
    Object? secondaryLang = freezed,
  }) {
    return _then(_$LessonContentImpl(
      primaryId: freezed == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      primaryLang: freezed == primaryLang
          ? _value.primaryLang
          : primaryLang // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryId: freezed == secondaryId
          ? _value.secondaryId
          : secondaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      secondaryLang: freezed == secondaryLang
          ? _value.secondaryLang
          : secondaryLang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonContentImpl implements _LessonContent {
  const _$LessonContentImpl(
      {@JsonKey(name: "primary_id") this.primaryId,
      @JsonKey(name: "primary_lang") this.primaryLang,
      @JsonKey(name: "secondary_id") this.secondaryId,
      @JsonKey(name: "secondary_lang") this.secondaryLang});

  factory _$LessonContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonContentImplFromJson(json);

  @override
  @JsonKey(name: "primary_id")
  final int? primaryId;
  @override
  @JsonKey(name: "primary_lang")
  final String? primaryLang;
  @override
  @JsonKey(name: "secondary_id")
  final int? secondaryId;
  @override
  @JsonKey(name: "secondary_lang")
  final String? secondaryLang;

  @override
  String toString() {
    return 'LessonContent(primaryId: $primaryId, primaryLang: $primaryLang, secondaryId: $secondaryId, secondaryLang: $secondaryLang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonContentImpl &&
            (identical(other.primaryId, primaryId) ||
                other.primaryId == primaryId) &&
            (identical(other.primaryLang, primaryLang) ||
                other.primaryLang == primaryLang) &&
            (identical(other.secondaryId, secondaryId) ||
                other.secondaryId == secondaryId) &&
            (identical(other.secondaryLang, secondaryLang) ||
                other.secondaryLang == secondaryLang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, primaryId, primaryLang, secondaryId, secondaryLang);

  /// Create a copy of LessonContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonContentImplCopyWith<_$LessonContentImpl> get copyWith =>
      __$$LessonContentImplCopyWithImpl<_$LessonContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonContentImplToJson(
      this,
    );
  }
}

abstract class _LessonContent implements LessonContent {
  const factory _LessonContent(
          {@JsonKey(name: "primary_id") final int? primaryId,
          @JsonKey(name: "primary_lang") final String? primaryLang,
          @JsonKey(name: "secondary_id") final int? secondaryId,
          @JsonKey(name: "secondary_lang") final String? secondaryLang}) =
      _$LessonContentImpl;

  factory _LessonContent.fromJson(Map<String, dynamic> json) =
      _$LessonContentImpl.fromJson;

  @override
  @JsonKey(name: "primary_id")
  int? get primaryId;
  @override
  @JsonKey(name: "primary_lang")
  String? get primaryLang;
  @override
  @JsonKey(name: "secondary_id")
  int? get secondaryId;
  @override
  @JsonKey(name: "secondary_lang")
  String? get secondaryLang;

  /// Create a copy of LessonContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonContentImplCopyWith<_$LessonContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
