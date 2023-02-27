// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Doctor _$$_DoctorFromJson(Map json) => _$_Doctor(
      id: json['id'] as String?,
      name: json['name'] as String?,
      street: json['street'] as String?,
      postalCode: json['postalCode'] as int?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      email: json['email'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_DoctorToJson(_$_Doctor instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'street': instance.street,
      'postalCode': instance.postalCode,
      'phone': instance.phone,
      'city': instance.city,
      'email': instance.email,
      'date': instance.date,
    };
