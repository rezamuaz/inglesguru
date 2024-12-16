// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonModImpl _$$LessonModImplFromJson(Map<String, dynamic> json) =>
    _$LessonModImpl(
      intro: json['intro'] == null
          ? const LessonItem()
          : LessonItem.fromJson(json['intro'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => LessonItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LessonModImplToJson(_$LessonModImpl instance) =>
    <String, dynamic>{
      'intro': instance.intro,
      'result': instance.result,
    };

_$LessonItemImpl _$$LessonItemImplFromJson(Map<String, dynamic> json) =>
    _$LessonItemImpl(
      lessonCode: json['lesson_code'] as String? ?? "",
      lessonId: (json['lesson_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? "",
      image: json['image'] as String? ?? "",
      description: json['description'] as String? ?? "",
      updatedAt: (json['updated_at'] as num?)?.toInt() ?? 0,
      unlocked: json['unlocked'] as bool? ?? false,
    );

Map<String, dynamic> _$$LessonItemImplToJson(_$LessonItemImpl instance) =>
    <String, dynamic>{
      'lesson_code': instance.lessonCode,
      'lesson_id': instance.lessonId,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'updated_at': instance.updatedAt,
      'unlocked': instance.unlocked,
    };
