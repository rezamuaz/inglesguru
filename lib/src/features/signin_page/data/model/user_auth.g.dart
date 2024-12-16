// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthImpl _$$UserAuthImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthImpl(
      sub: json['sub'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$UserAuthImplToJson(_$UserAuthImpl instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'email': instance.email,
      'name': instance.name,
      'picture': instance.picture,
    };
