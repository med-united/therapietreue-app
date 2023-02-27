// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  int? get zipCode => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get mail => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? street,
      int? zipCode,
      String? phone,
      String? city,
      String? mail,
      String? date});
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? street = freezed,
    Object? zipCode = freezed,
    Object? phone = freezed,
    Object? city = freezed,
    Object? mail = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DoctorCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$_DoctorCopyWith(_$_Doctor value, $Res Function(_$_Doctor) then) =
      __$$_DoctorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? street,
      int? zipCode,
      String? phone,
      String? city,
      String? mail,
      String? date});
}

/// @nodoc
class __$$_DoctorCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$_Doctor>
    implements _$$_DoctorCopyWith<$Res> {
  __$$_DoctorCopyWithImpl(_$_Doctor _value, $Res Function(_$_Doctor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? street = freezed,
    Object? zipCode = freezed,
    Object? phone = freezed,
    Object? city = freezed,
    Object? mail = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_Doctor(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Doctor extends _Doctor {
  _$_Doctor(
      {this.id,
      this.name,
      this.street,
      this.zipCode,
      this.phone,
      this.city,
      this.mail,
      this.date})
      : super._();

  factory _$_Doctor.fromJson(Map<String, dynamic> json) =>
      _$$_DoctorFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? street;
  @override
  final int? zipCode;
  @override
  final String? phone;
  @override
  final String? city;
  @override
  final String? mail;
  @override
  final String? date;

  @override
  String toString() {
    return 'Doctor(id: $id, name: $name, street: $street, zipCode: $zipCode, phone: $phone, city: $city, mail: $mail, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Doctor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, street, zipCode, phone, city, mail, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoctorCopyWith<_$_Doctor> get copyWith =>
      __$$_DoctorCopyWithImpl<_$_Doctor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoctorToJson(
      this,
    );
  }
}

abstract class _Doctor extends Doctor {
  factory _Doctor(
      {final String? id,
      final String? name,
      final String? street,
      final int? zipCode,
      final String? phone,
      final String? city,
      final String? mail,
      final String? date}) = _$_Doctor;
  _Doctor._() : super._();

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$_Doctor.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get street;
  @override
  int? get zipCode;
  @override
  String? get phone;
  @override
  String? get city;
  @override
  String? get mail;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorCopyWith<_$_Doctor> get copyWith =>
      throw _privateConstructorUsedError;
}
