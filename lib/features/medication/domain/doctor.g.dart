// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Doctor _$$_DoctorFromJson(Map json) => _$_Doctor(
      id: json['id'] as String?,
      surname: json['surname'] as String?,
      lastname: json['lastname'] as String?,
      street: json['street'] as String?,
      zipCode: json['zipCode'] as int?,
      city: json['city'] as String?,
      mail: json['mail'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_DoctorToJson(_$_Doctor instance) => <String, dynamic>{
      'id': instance.id,
      'surname': instance.surname,
      'lastname': instance.lastname,
      'street': instance.street,
      'zipCode': instance.zipCode,
      'city': instance.city,
      'mail': instance.mail,
      'date': instance.date,
    };
