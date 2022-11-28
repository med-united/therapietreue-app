// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicationPlan _$$_MedicationPlanFromJson(Map json) => _$_MedicationPlan(
      id: json['id'] as String?,
      medication: (json['medication'] as List<dynamic>?)
          ?.map((e) => Medication.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      doctor: json['doctor'] == null
          ? null
          : Doctor.fromJson(Map<String, dynamic>.from(json['doctor'] as Map)),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_MedicationPlanToJson(_$_MedicationPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medication': instance.medication?.map((e) => e.toJson()).toList(),
      'user': instance.user?.toJson(),
      'doctor': instance.doctor?.toJson(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
