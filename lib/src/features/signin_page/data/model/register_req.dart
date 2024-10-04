import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_req.freezed.dart';
part 'register_req.g.dart';

@freezed
class RegisterReqMod with _$RegisterReqMod {

  factory RegisterReqMod({
    final String? appId,
    @JsonKey(name: "id_token",defaultValue: "") final String? idToken,
    final String? os,
    final String? nativeLingo
  }) = _RegisterReqMod;

  factory RegisterReqMod.fromJson(Map<String, dynamic> json) => _$RegisterReqModFromJson(json);
}