import 'package:freezed_annotation/freezed_annotation.dart';

part 'medication.g.dart';
part 'medication.freezed.dart';

@freezed
class Medication with _$Medication {
  Medication._();

  factory Medication(
      {final String? pzn,
      double? amountMorning,
      double? amountMidday,
      double? amountEvening,
      double? amountNight,
      String? amountInfo,
      String? name,
      int? packageSize,
      String? info,
      String? reason}) = _Medication;

  factory Medication.fromJson(Map<String, dynamic> json) =>
      _$MedicationFromJson(json);
}
