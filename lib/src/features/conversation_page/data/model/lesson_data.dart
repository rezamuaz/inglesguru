import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_data.freezed.dart';
part 'lesson_data.g.dart';

@freezed
class LessonData with _$LessonData {
  factory LessonData({@JsonKey(name: "scene_url",defaultValue: "") final String? sceneUrl,final List<LessonPage>? pages}) = _LessonData;

  factory LessonData.fromJson(Map<String, dynamic> json) =>
      _$LessonDataFromJson(json);
}

@freezed
class LessonPage with _$LessonPage {
  factory LessonPage(
      {
      ///Number of Page Comic
      final int? page,

      ///Step of Page (Normaly 2 Step/Page)
      final List<LessonStep>? steps}) = _LessonPage;

  factory LessonPage.fromJson(Map<String, dynamic> json) =>
      _$LessonPageFromJson(json);
}

@freezed
class LessonStep with _$LessonStep {
  factory LessonStep({
    @JsonKey(name: "step") final int? step,

    ///English Language Comic Character
    @JsonKey(name: "contents") final LessonContent? contents,
    @JsonKey(name: "assets") final LessonAssets? assets,
  }) = _LessonStep;

  factory LessonStep.fromJson(Map<String, dynamic> json) =>
      _$LessonStepFromJson(json);
}

@freezed
class LessonAssets with _$LessonAssets {
  factory LessonAssets({
    @JsonKey(name: "image") final String? image,
    @JsonKey(name: "voice") final String? voice,
  }) = _LessonAssets;

  factory LessonAssets.fromJson(Map<String, dynamic> json) =>
      _$LessonAssetsFromJson(json);
}

@freezed
class LessonContent with _$LessonContent {
  factory LessonContent(
          {@JsonKey(name: "primary_id") final int? primaryId,
          @JsonKey(name: "primary_lang") final String? primaryLang,
          @JsonKey(name: "secondary_id") final int? secondaryId,
          @JsonKey(name: "secondary_lang") final String? secondaryLang}) =
      _LessonContent;

  factory LessonContent.fromJson(Map<String, dynamic> json) =>
      _$LessonContentFromJson(json);
}
