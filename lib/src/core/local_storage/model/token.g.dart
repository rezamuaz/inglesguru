// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      role:
          (json['role'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      isPremium: json['is_premium'] as bool? ?? false,
      accessToken: json['access_token'] as String? ?? "",
      refreshToken: json['refresh_token'] as String? ?? "",
      accessExpiredAt: (json['access_expire_at'] as num?)?.toInt() ?? 0,
      refreshExpiredAt: (json['refresh_expire_at'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'is_premium': instance.isPremium,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'access_expire_at': instance.accessExpiredAt,
      'refresh_expire_at': instance.refreshExpiredAt,
    };
