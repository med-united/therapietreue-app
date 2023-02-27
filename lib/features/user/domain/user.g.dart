// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => _$_User(
      birthDate: json['birthDate'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      image: json['image'] == null
          ? null
          : FileReference.fromJson(
              Map<String, dynamic>.from(json['image'] as Map)),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'birthDate': instance.birthDate,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'image': instance.image?.toJson(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
