import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth.freezed.dart';
part 'user_auth.g.dart';

@freezed
class UserAuth with _$UserAuth {

  factory UserAuth({
    final String? idToken,
    final String? idGoole,
    final String? displayName,
    final String? photoUrl,
    final String? email,
    final String? token
  }) = _UserAuth;

  factory UserAuth.fromJson(Map<String, dynamic> json) => _$UserAuthFromJson(json);
}