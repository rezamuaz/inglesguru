import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_resp.freezed.dart';
part 'token_resp.g.dart';

@freezed
class TokenResp with _$TokenResp {

  factory TokenResp({
    @JsonKey(name: "access_token",defaultValue: "") final String? accessToken,
    @JsonKey(name: "refresh_token",defaultValue: "") final String? refreshToken,
    @JsonKey(name: "id",defaultValue: "") final String? id,
    @JsonKey(name: "role",defaultValue: []) final List<String>? role
  }) = _TokenResp;

  factory TokenResp.fromJson(Map<String, dynamic> json) => _$TokenRespFromJson(json);
}