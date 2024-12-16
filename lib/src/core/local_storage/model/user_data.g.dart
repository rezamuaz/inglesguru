// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      userid: json['user_id'] as String? ?? "",
      appId: json['app_id'] as String? ?? "",
      displayName: json['display_name'] as String? ?? "",
      photoUrl: json['photo_url'] as String? ?? "",
      email: json['email'] as String? ?? "",
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userid,
      'app_id': instance.appId,
      'display_name': instance.displayName,
      'photo_url': instance.photoUrl,
      'email': instance.email,
    };
