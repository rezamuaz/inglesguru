// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthImpl _$$UserAuthImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthImpl(
      idToken: json['idToken'] as String?,
      idGoole: json['idGoole'] as String?,
      displayName: json['displayName'] as String?,
      photoUrl: json['photoUrl'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserAuthImplToJson(_$UserAuthImpl instance) =>
    <String, dynamic>{
      'idToken': instance.idToken,
      'idGoole': instance.idGoole,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'email': instance.email,
      'token': instance.token,
    };
