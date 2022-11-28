import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/domain/user.dart';
import 'doctor.dart';
import 'medication.dart';

part 'medication_plan.g.dart';
part 'medication_plan.freezed.dart';

@freezed
class MedicationPlan with _$MedicationPlan {
  MedicationPlan._();

  factory MedicationPlan(
      {final String? id,
      List<Medication>? medication,
      User? user,
      Doctor? doctor,
      DateTime? updatedAt,
      DateTime? createdAt}) = _MedicationPlan;

  factory MedicationPlan.fromJson(Map<String, dynamic> json) =>
      _$MedicationPlanFromJson(json);
}
