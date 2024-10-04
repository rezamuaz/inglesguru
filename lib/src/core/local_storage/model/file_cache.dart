import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'file_cache.freezed.dart';
part 'file_cache.g.dart';

@freezed
class CacheHive with _$CacheHive {
  @HiveType(typeId: 1, adapterName: 'CacheHiveAdapter')
  factory CacheHive({
    @JsonKey(name: "location", defaultValue: "") @HiveField(0) String? location,
    @JsonKey(name: "created_at", defaultValue: 0) @HiveField(1) int? createdAt,
    @JsonKey(name: "etag", defaultValue: "") @HiveField(2) String? etag,
  }) = _CacheHive;

  factory CacheHive.fromJson(Map<String, dynamic> json) =>
      _$CacheHiveFromJson(json);
}
