// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Medication _$$_MedicationFromJson(Map json) => _$_Medication(
      id: json['id'] as String?,
      amountMorning: (json['amountMorning'] as num?)?.toDouble(),
      amountMidday: (json['amountMidday'] as num?)?.toDouble(),
      amountEvening: (json['amountEvening'] as num?)?.toDouble(),
      amountNight: (json['amountNight'] as num?)?.toDouble(),
      amountInfo: json['amountInfo'] as String?,
      name: json['name'] as String?,
      packageSize: json['packageSize'] as int?,
      info: json['info'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_MedicationToJson(_$_Medication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amountMorning': instance.amountMorning,
      'amountMidday': instance.amountMidday,
      'amountEvening': instance.amountEvening,
      'amountNight': instance.amountNight,
      'amountInfo': instance.amountInfo,
      'name': instance.name,
      'packageSize': instance.packageSize,
      'info': instance.info,
      'reason': instance.reason,
    };
