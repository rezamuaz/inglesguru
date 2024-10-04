import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
part 'user_hive.freezed.dart';
part 'user_hive.g.dart';

@freezed
class UserHive with _$UserHive {
  @HiveType(typeId: 0, adapterName: 'UserHiveAdapter')
  factory UserHive({
    @JsonKey(name: "id", defaultValue: "") @HiveField(0) String? id,
    @JsonKey(name: "id_google", defaultValue: "")
    @HiveField(1)
    String? idGoogle,
    @JsonKey(name: "display_name", defaultValue: "")
    @HiveField(2)
    String? displayName,
    @JsonKey(name: "photo_url", defaultValue: "")
    @HiveField(3)
    String? photoUrl,
    @JsonKey(name: "email", defaultValue: "") @HiveField(4) String? email,
    @JsonKey(name: "role", defaultValue: []) @HiveField(5) List<String>? role,
    @JsonKey(name: "access_token", defaultValue: "")
    @HiveField(6)
    String? accessToken,
    @JsonKey(name: "refresh_token", defaultValue: "")
    @HiveField(7)
    String? refreshToken,
  }) = _UserHive;

  factory UserHive.fromJson(Map<String, dynamic> json) =>
      _$UserHiveFromJson(json);
}
