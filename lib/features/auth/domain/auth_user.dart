import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.g.dart';
part 'auth_user.freezed.dart';

@freezed
class AuthUser with _$AuthUser {
  AuthUser._();

  factory AuthUser(
      {final String? id,
      @Default(false) bool isAnonymous,
      @Default(false) bool isNewUser}) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}
