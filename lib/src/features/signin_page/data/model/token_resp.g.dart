// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenRespImpl _$$TokenRespImplFromJson(Map<String, dynamic> json) =>
    _$TokenRespImpl(
      accessToken: json['access_token'] as String? ?? '',
      refreshToken: json['refresh_token'] as String? ?? '',
      id: json['id'] as String? ?? '',
      role:
          (json['role'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$$TokenRespImplToJson(_$TokenRespImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'id': instance.id,
      'role': instance.role,
    };
