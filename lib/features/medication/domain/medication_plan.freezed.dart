// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medication_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicationPlan _$MedicationPlanFromJson(Map<String, dynamic> json) {
  return _MedicationPlan.fromJson(json);
}

/// @nodoc
mixin _$MedicationPlan {
  String? get id => throw _privateConstructorUsedError;
  List<Medication>? get medication => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Doctor? get doctor => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicationPlanCopyWith<MedicationPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationPlanCopyWith<$Res> {
  factory $MedicationPlanCopyWith(
          MedicationPlan value, $Res Function(MedicationPlan) then) =
      _$MedicationPlanCopyWithImpl<$Res, MedicationPlan>;
  @useResult
  $Res call(
      {String? id,
      List<Medication>? medication,
      User? user,
      Doctor? doctor,
      DateTime? updatedAt,
      DateTime? createdAt});

  $UserCopyWith<$Res>? get user;
  $DoctorCopyWith<$Res>? get doctor;
}

/// @nodoc
class _$MedicationPlanCopyWithImpl<$Res, $Val extends MedicationPlan>
    implements $MedicationPlanCopyWith<$Res> {
  _$MedicationPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? medication = freezed,
    Object? user = freezed,
    Object? doctor = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      medication: freezed == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as List<Medication>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $DoctorCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MedicationPlanCopyWith<$Res>
    implements $MedicationPlanCopyWith<$Res> {
  factory _$$_MedicationPlanCopyWith(
          _$_MedicationPlan value, $Res Function(_$_MedicationPlan) then) =
      __$$_MedicationPlanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<Medication>? medication,
      User? user,
      Doctor? doctor,
      DateTime? updatedAt,
      DateTime? createdAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $DoctorCopyWith<$Res>? get doctor;
}

/// @nodoc
class __$$_MedicationPlanCopyWithImpl<$Res>
    extends _$MedicationPlanCopyWithImpl<$Res, _$_MedicationPlan>
    implements _$$_MedicationPlanCopyWith<$Res> {
  __$$_MedicationPlanCopyWithImpl(
      _$_MedicationPlan _value, $Res Function(_$_MedicationPlan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? medication = freezed,
    Object? user = freezed,
    Object? doctor = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_MedicationPlan(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      medication: freezed == medication
          ? _value._medication
          : medication // ignore: cast_nullable_to_non_nullable
              as List<Medication>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicationPlan extends _MedicationPlan {
  _$_MedicationPlan(
      {this.id,
      final List<Medication>? medication,
      this.user,
      this.doctor,
      this.updatedAt,
      this.createdAt})
      : _medication = medication,
        super._();

  factory _$_MedicationPlan.fromJson(Map<String, dynamic> json) =>
      _$$_MedicationPlanFromJson(json);

  @override
  final String? id;
  final List<Medication>? _medication;
  @override
  List<Medication>? get medication {
    final value = _medication;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final User? user;
  @override
  final Doctor? doctor;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MedicationPlan(id: $id, medication: $medication, user: $user, doctor: $doctor, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicationPlan &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._medication, _medication) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_medication),
      user,
      doctor,
      updatedAt,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicationPlanCopyWith<_$_MedicationPlan> get copyWith =>
      __$$_MedicationPlanCopyWithImpl<_$_MedicationPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicationPlanToJson(
      this,
    );
  }
}

abstract class _MedicationPlan extends MedicationPlan {
  factory _MedicationPlan(
      {final String? id,
      final List<Medication>? medication,
      final User? user,
      final Doctor? doctor,
      final DateTime? updatedAt,
      final DateTime? createdAt}) = _$_MedicationPlan;
  _MedicationPlan._() : super._();

  factory _MedicationPlan.fromJson(Map<String, dynamic> json) =
      _$_MedicationPlan.fromJson;

  @override
  String? get id;
  @override
  List<Medication>? get medication;
  @override
  User? get user;
  @override
  Doctor? get doctor;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MedicationPlanCopyWith<_$_MedicationPlan> get copyWith =>
      throw _privateConstructorUsedError;
}
