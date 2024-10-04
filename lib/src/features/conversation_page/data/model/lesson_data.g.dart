// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonDataImpl _$$LessonDataImplFromJson(Map<String, dynamic> json) =>
    _$LessonDataImpl(
      sceneUrl: json['scene_url'] as String? ?? '',
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => LessonPage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonDataImplToJson(_$LessonDataImpl instance) =>
    <String, dynamic>{
      'scene_url': instance.sceneUrl,
      'pages': instance.pages,
    };

_$LessonPageImpl _$$LessonPageImplFromJson(Map<String, dynamic> json) =>
    _$LessonPageImpl(
      page: (json['page'] as num?)?.toInt(),
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => LessonStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonPageImplToJson(_$LessonPageImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'steps': instance.steps,
    };

_$LessonStepImpl _$$LessonStepImplFromJson(Map<String, dynamic> json) =>
    _$LessonStepImpl(
      step: (json['step'] as num?)?.toInt(),
      contents: json['contents'] == null
          ? null
          : LessonContent.fromJson(json['contents'] as Map<String, dynamic>),
      assets: json['assets'] == null
          ? null
          : LessonAssets.fromJson(json['assets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LessonStepImplToJson(_$LessonStepImpl instance) =>
    <String, dynamic>{
      'step': instance.step,
      'contents': instance.contents,
      'assets': instance.assets,
    };

_$LessonAssetsImpl _$$LessonAssetsImplFromJson(Map<String, dynamic> json) =>
    _$LessonAssetsImpl(
      image: json['image'] as String?,
      voice: json['voice'] as String?,
    );

Map<String, dynamic> _$$LessonAssetsImplToJson(_$LessonAssetsImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'voice': instance.voice,
    };

_$LessonContentImpl _$$LessonContentImplFromJson(Map<String, dynamic> json) =>
    _$LessonContentImpl(
      primaryId: (json['primary_id'] as num?)?.toInt(),
      primaryLang: json['primary_lang'] as String?,
      secondaryId: (json['secondary_id'] as num?)?.toInt(),
      secondaryLang: json['secondary_lang'] as String?,
    );

Map<String, dynamic> _$$LessonContentImplToJson(_$LessonContentImpl instance) =>
    <String, dynamic>{
      'primary_id': instance.primaryId,
      'primary_lang': instance.primaryLang,
      'secondary_id': instance.secondaryId,
      'secondary_lang': instance.secondaryLang,
    };
