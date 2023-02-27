import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapietreu/core/file_reference/file_reference.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  User._();

  factory User(
      {final String? id,
      String? birthDate,
      String? firstName,
      String? lastName,
      FileReference? image,
      DateTime? createdAt,
      DateTime? updatedAt}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
