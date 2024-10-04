// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterReqModImpl _$$RegisterReqModImplFromJson(Map<String, dynamic> json) =>
    _$RegisterReqModImpl(
      appId: json['appId'] as String?,
      idToken: json['id_token'] as String? ?? '',
      os: json['os'] as String?,
      nativeLingo: json['nativeLingo'] as String?,
    );

Map<String, dynamic> _$$RegisterReqModImplToJson(
        _$RegisterReqModImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'id_token': instance.idToken,
      'os': instance.os,
      'nativeLingo': instance.nativeLingo,
    };
