// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_cache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CacheHiveAdapter extends TypeAdapter<_$CacheHiveImpl> {
  @override
  final int typeId = 1;

  @override
  _$CacheHiveImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CacheHiveImpl(
      location: fields[0] as String?,
      createdAt: (fields[1] as num?)?.toInt(),
      etag: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$CacheHiveImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.etag);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CacheHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CacheHiveImpl _$$CacheHiveImplFromJson(Map<String, dynamic> json) =>
    _$CacheHiveImpl(
      location: json['location'] as String? ?? '',
      createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
      etag: json['etag'] as String? ?? '',
    );

Map<String, dynamic> _$$CacheHiveImplToJson(_$CacheHiveImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'created_at': instance.createdAt,
      'etag': instance.etag,
    };
