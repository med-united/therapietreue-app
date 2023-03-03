// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Medication _$$_MedicationFromJson(Map json) => _$_Medication(
      pzn: json['pzn'] as String?,
      amountMorning: (json['amountMorning'] as num?)?.toDouble(),
      amountMorningText: json['amountMorningText'] as String?,
      amountMidday: (json['amountMidday'] as num?)?.toDouble(),
      amountMiddayText: json['amountMiddayText'] as String?,
      amountEvening: (json['amountEvening'] as num?)?.toDouble(),
      amountEveningText: json['amountEveningText'] as String?,
      amountNight: (json['amountNight'] as num?)?.toDouble(),
      amountNightText: json['amountNightText'] as String?,
      amountInfo: json['amountInfo'] as String?,
      name: json['name'] as String?,
      packageSize: json['packageSize'] as int?,
      info: json['info'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_MedicationToJson(_$_Medication instance) =>
    <String, dynamic>{
      'pzn': instance.pzn,
      'amountMorning': instance.amountMorning,
      'amountMorningText': instance.amountMorningText,
      'amountMidday': instance.amountMidday,
      'amountMiddayText': instance.amountMiddayText,
      'amountEvening': instance.amountEvening,
      'amountEveningText': instance.amountEveningText,
      'amountNight': instance.amountNight,
      'amountNightText': instance.amountNightText,
      'amountInfo': instance.amountInfo,
      'name': instance.name,
      'packageSize': instance.packageSize,
      'info': instance.info,
      'reason': instance.reason,
    };
