// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserHiveAdapter extends TypeAdapter<_$UserHiveImpl> {
  @override
  final int typeId = 0;

  @override
  _$UserHiveImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserHiveImpl(
      id: fields[0] as String?,
      idGoogle: fields[1] as String?,
      displayName: fields[2] as String?,
      photoUrl: fields[3] as String?,
      email: fields[4] as String?,
      role: (fields[5] as List?)?.cast<String>(),
      accessToken: fields[6] as String?,
      refreshToken: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserHiveImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.idGoogle)
      ..writeByte(2)
      ..write(obj.displayName)
      ..writeByte(3)
      ..write(obj.photoUrl)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(6)
      ..write(obj.accessToken)
      ..writeByte(7)
      ..write(obj.refreshToken)
      ..writeByte(5)
      ..write(obj.role);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserHiveImpl _$$UserHiveImplFromJson(Map<String, dynamic> json) =>
    _$UserHiveImpl(
      id: json['id'] as String? ?? '',
      idGoogle: json['id_google'] as String? ?? '',
      displayName: json['display_name'] as String? ?? '',
      photoUrl: json['photo_url'] as String? ?? '',
      email: json['email'] as String? ?? '',
      role:
          (json['role'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      accessToken: json['access_token'] as String? ?? '',
      refreshToken: json['refresh_token'] as String? ?? '',
    );

Map<String, dynamic> _$$UserHiveImplToJson(_$UserHiveImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_google': instance.idGoogle,
      'display_name': instance.displayName,
      'photo_url': instance.photoUrl,
      'email': instance.email,
      'role': instance.role,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
