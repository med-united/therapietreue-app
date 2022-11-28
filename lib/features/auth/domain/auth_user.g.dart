// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthUser _$$_AuthUserFromJson(Map json) => _$_AuthUser(
      id: json['id'] as String?,
      isAnonymous: json['isAnonymous'] as bool? ?? false,
      isNewUser: json['isNewUser'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AuthUserToJson(_$_AuthUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isAnonymous': instance.isAnonymous,
      'isNewUser': instance.isNewUser,
    };
