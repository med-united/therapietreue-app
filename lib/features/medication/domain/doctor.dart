import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.g.dart';
part 'doctor.freezed.dart';

@freezed
class Doctor with _$Doctor {
  Doctor._();

  factory Doctor(
      {final String? id,
      String? name,
      String? street,
      int? zipCode,
      String? city,
      String? mail,
      String? date}) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}
