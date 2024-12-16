// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterReqModImpl _$$RegisterReqModImplFromJson(Map<String, dynamic> json) =>
    _$RegisterReqModImpl(
      appId: json['appId'] as String?,
      idToken: json['id_token'] as String? ?? "",
      os: json['os'] as String? ?? "",
      language: json['language'] as String? ?? "",
      fcmToken: json['fcm_token'] as String? ?? "",
      deviceInfo: json['device_info'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$RegisterReqModImplToJson(
        _$RegisterReqModImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'id_token': instance.idToken,
      'os': instance.os,
      'language': instance.language,
      'fcm_token': instance.fcmToken,
      'device_info': instance.deviceInfo,
    };
