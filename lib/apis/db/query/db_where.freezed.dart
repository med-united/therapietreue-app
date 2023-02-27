// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_where.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DBWhere<T> {
  String get field => throw _privateConstructorUsedError;
  T? get object => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field, T? object) isEqualTo,
    required TResult Function(String field, T? object) isNotEqualTo,
    required TResult Function(String field, T? object) isGreaterThan,
    required TResult Function(String field, T? object) isLessThan,
    required TResult Function(String field, T? object) arrayContains,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field, T? object)? isEqualTo,
    TResult? Function(String field, T? object)? isNotEqualTo,
    TResult? Function(String field, T? object)? isGreaterThan,
    TResult? Function(String field, T? object)? isLessThan,
    TResult? Function(String field, T? object)? arrayContains,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field, T? object)? isEqualTo,
    TResult Function(String field, T? object)? isNotEqualTo,
    TResult Function(String field, T? object)? isGreaterThan,
    TResult Function(String field, T? object)? isLessThan,
    TResult Function(String field, T? object)? arrayContains,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WhereEqualTo<T> value) isEqualTo,
    required TResult Function(WhereNotEqualTo<T> value) isNotEqualTo,
    required TResult Function(WhereGreaterThan<T> value) isGreaterThan,
    required TResult Function(WhereLessThan<T> value) isLessThan,
    required TResult Function(WhereArrayContains<T> value) arrayContains,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhereEqualTo<T> value)? isEqualTo,
    TResult? Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult? Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult? Function(WhereLessThan<T> value)? isLessThan,
    TResult? Function(WhereArrayContains<T> value)? arrayContains,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhereEqualTo<T> value)? isEqualTo,
    TResult Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult Function(WhereLessThan<T> value)? isLessThan,
    TResult Function(WhereArrayContains<T> value)? arrayContains,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DBWhereCopyWith<T, DBWhere<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DBWhereCopyWith<T, $Res> {
  factory $DBWhereCopyWith(DBWhere<T> value, $Res Function(DBWhere<T>) then) =
      _$DBWhereCopyWithImpl<T, $Res, DBWhere<T>>;
  @useResult
  $Res call({String field, T? object});
}

/// @nodoc
class _$DBWhereCopyWithImpl<T, $Res, $Val extends DBWhere<T>>
    implements $DBWhereCopyWith<T, $Res> {
  _$DBWhereCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? object = freezed,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WhereEqualToCopyWith<T, $Res>
    implements $DBWhereCopyWith<T, $Res> {
  factory _$$WhereEqualToCopyWith(
          _$WhereEqualTo<T> value, $Res Function(_$WhereEqualTo<T>) then) =
      __$$WhereEqualToCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String field, T? object});
}

/// @nodoc
class __$$WhereEqualToCopyWithImpl<T, $Res>
    extends _$DBWhereCopyWithImpl<T, $Res, _$WhereEqualTo<T>>
    implements _$$WhereEqualToCopyWith<T, $Res> {
  __$$WhereEqualToCopyWithImpl(
      _$WhereEqualTo<T> _value, $Res Function(_$WhereEqualTo<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? object = freezed,
  }) {
    return _then(_$WhereEqualTo<T>(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$WhereEqualTo<T> extends WhereEqualTo<T> {
  _$WhereEqualTo({required this.field, this.object}) : super._();

  @override
  final String field;
  @override
  final T? object;

  @override
  String toString() {
    return 'DBWhere<$T>.isEqualTo(field: $field, object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhereEqualTo<T> &&
            (identical(other.field, field) || other.field == field) &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, field, const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhereEqualToCopyWith<T, _$WhereEqualTo<T>> get copyWith =>
      __$$WhereEqualToCopyWithImpl<T, _$WhereEqualTo<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field, T? object) isEqualTo,
    required TResult Function(String field, T? object) isNotEqualTo,
    required TResult Function(String field, T? object) isGreaterThan,
    required TResult Function(String field, T? object) isLessThan,
    required TResult Function(String field, T? object) arrayContains,
  }) {
    return isEqualTo(field, object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field, T? object)? isEqualTo,
    TResult? Function(String field, T? object)? isNotEqualTo,
    TResult? Function(String field, T? object)? isGreaterThan,
    TResult? Function(String field, T? object)? isLessThan,
    TResult? Function(String field, T? object)? arrayContains,
  }) {
    return isEqualTo?.call(field, object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field, T? object)? isEqualTo,
    TResult Function(String field, T? object)? isNotEqualTo,
    TResult Function(String field, T? object)? isGreaterThan,
    TResult Function(String field, T? object)? isLessThan,
    TResult Function(String field, T? object)? arrayContains,
    required TResult orElse(),
  }) {
    if (isEqualTo != null) {
      return isEqualTo(field, object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WhereEqualTo<T> value) isEqualTo,
    required TResult Function(WhereNotEqualTo<T> value) isNotEqualTo,
    required TResult Function(WhereGreaterThan<T> value) isGreaterThan,
    required TResult Function(WhereLessThan<T> value) isLessThan,
    required TResult Function(WhereArrayContains<T> value) arrayContains,
  }) {
    return isEqualTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhereEqualTo<T> value)? isEqualTo,
    TResult? Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult? Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult? Function(WhereLessThan<T> value)? isLessThan,
    TResult? Function(WhereArrayContains<T> value)? arrayContains,
  }) {
    return isEqualTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhereEqualTo<T> value)? isEqualTo,
    TResult Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult Function(WhereLessThan<T> value)? isLessThan,
    TResult Function(WhereArrayContains<T> value)? arrayContains,
    required TResult orElse(),
  }) {
    if (isEqualTo != null) {
      return isEqualTo(this);
    }
    return orElse();
  }
}

abstract class WhereEqualTo<T> extends DBWhere<T> {
  factory WhereEqualTo({required final String field, final T? object}) =
      _$WhereEqualTo<T>;
  WhereEqualTo._() : super._();

  @override
  String get field;
  @override
  T? get object;
  @override
  @JsonKey(ignore: true)
  _$$WhereEqualToCopyWith<T, _$WhereEqualTo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WhereNotEqualToCopyWith<T, $Res>
    implements $DBWhereCopyWith<T, $Res> {
  factory _$$WhereNotEqualToCopyWith(_$WhereNotEqualTo<T> value,
          $Res Function(_$WhereNotEqualTo<T>) then) =
      __$$WhereNotEqualToCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String field, T? object});
}

/// @nodoc
class __$$WhereNotEqualToCopyWithImpl<T, $Res>
    extends _$DBWhereCopyWithImpl<T, $Res, _$WhereNotEqualTo<T>>
    implements _$$WhereNotEqualToCopyWith<T, $Res> {
  __$$WhereNotEqualToCopyWithImpl(
      _$WhereNotEqualTo<T> _value, $Res Function(_$WhereNotEqualTo<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? object = freezed,
  }) {
    return _then(_$WhereNotEqualTo<T>(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$WhereNotEqualTo<T> extends WhereNotEqualTo<T> {
  _$WhereNotEqualTo({required this.field, this.object}) : super._();

  @override
  final String field;
  @override
  final T? object;

  @override
  String toString() {
    return 'DBWhere<$T>.isNotEqualTo(field: $field, object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhereNotEqualTo<T> &&
            (identical(other.field, field) || other.field == field) &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, field, const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhereNotEqualToCopyWith<T, _$WhereNotEqualTo<T>> get copyWith =>
      __$$WhereNotEqualToCopyWithImpl<T, _$WhereNotEqualTo<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field, T? object) isEqualTo,
    required TResult Function(String field, T? object) isNotEqualTo,
    required TResult Function(String field, T? object) isGreaterThan,
    required TResult Function(String field, T? object) isLessThan,
    required TResult Function(String field, T? object) arrayContains,
  }) {
    return isNotEqualTo(field, object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field, T? object)? isEqualTo,
    TResult? Function(String field, T? object)? isNotEqualTo,
    TResult? Function(String field, T? object)? isGreaterThan,
    TResult? Function(String field, T? object)? isLessThan,
    TResult? Function(String field, T? object)? arrayContains,
  }) {
    return isNotEqualTo?.call(field, object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field, T? object)? isEqualTo,
    TResult Function(String field, T? object)? isNotEqualTo,
    TResult Function(String field, T? object)? isGreaterThan,
    TResult Function(String field, T? object)? isLessThan,
    TResult Function(String field, T? object)? arrayContains,
    required TResult orElse(),
  }) {
    if (isNotEqualTo != null) {
      return isNotEqualTo(field, object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WhereEqualTo<T> value) isEqualTo,
    required TResult Function(WhereNotEqualTo<T> value) isNotEqualTo,
    required TResult Function(WhereGreaterThan<T> value) isGreaterThan,
    required TResult Function(WhereLessThan<T> value) isLessThan,
    required TResult Function(WhereArrayContains<T> value) arrayContains,
  }) {
    return isNotEqualTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhereEqualTo<T> value)? isEqualTo,
    TResult? Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult? Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult? Function(WhereLessThan<T> value)? isLessThan,
    TResult? Function(WhereArrayContains<T> value)? arrayContains,
  }) {
    return isNotEqualTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhereEqualTo<T> value)? isEqualTo,
    TResult Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult Function(WhereLessThan<T> value)? isLessThan,
    TResult Function(WhereArrayContains<T> value)? arrayContains,
    required TResult orElse(),
  }) {
    if (isNotEqualTo != null) {
      return isNotEqualTo(this);
    }
    return orElse();
  }
}

abstract class WhereNotEqualTo<T> extends DBWhere<T> {
  factory WhereNotEqualTo({required final String field, final T? object}) =
      _$WhereNotEqualTo<T>;
  WhereNotEqualTo._() : super._();

  @override
  String get field;
  @override
  T? get object;
  @override
  @JsonKey(ignore: true)
  _$$WhereNotEqualToCopyWith<T, _$WhereNotEqualTo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WhereGreaterThanCopyWith<T, $Res>
    implements $DBWhereCopyWith<T, $Res> {
  factory _$$WhereGreaterThanCopyWith(_$WhereGreaterThan<T> value,
          $Res Function(_$WhereGreaterThan<T>) then) =
      __$$WhereGreaterThanCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String field, T? object});
}

/// @nodoc
class __$$WhereGreaterThanCopyWithImpl<T, $Res>
    extends _$DBWhereCopyWithImpl<T, $Res, _$WhereGreaterThan<T>>
    implements _$$WhereGreaterThanCopyWith<T, $Res> {
  __$$WhereGreaterThanCopyWithImpl(
      _$WhereGreaterThan<T> _value, $Res Function(_$WhereGreaterThan<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? object = freezed,
  }) {
    return _then(_$WhereGreaterThan<T>(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$WhereGreaterThan<T> extends WhereGreaterThan<T> {
  _$WhereGreaterThan({required this.field, this.object}) : super._();

  @override
  final String field;
  @override
  final T? object;

  @override
  String toString() {
    return 'DBWhere<$T>.isGreaterThan(field: $field, object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhereGreaterThan<T> &&
            (identical(other.field, field) || other.field == field) &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, field, const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhereGreaterThanCopyWith<T, _$WhereGreaterThan<T>> get copyWith =>
      __$$WhereGreaterThanCopyWithImpl<T, _$WhereGreaterThan<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field, T? object) isEqualTo,
    required TResult Function(String field, T? object) isNotEqualTo,
    required TResult Function(String field, T? object) isGreaterThan,
    required TResult Function(String field, T? object) isLessThan,
    required TResult Function(String field, T? object) arrayContains,
  }) {
    return isGreaterThan(field, object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field, T? object)? isEqualTo,
    TResult? Function(String field, T? object)? isNotEqualTo,
    TResult? Function(String field, T? object)? isGreaterThan,
    TResult? Function(String field, T? object)? isLessThan,
    TResult? Function(String field, T? object)? arrayContains,
  }) {
    return isGreaterThan?.call(field, object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field, T? object)? isEqualTo,
    TResult Function(String field, T? object)? isNotEqualTo,
    TResult Function(String field, T? object)? isGreaterThan,
    TResult Function(String field, T? object)? isLessThan,
    TResult Function(String field, T? object)? arrayContains,
    required TResult orElse(),
  }) {
    if (isGreaterThan != null) {
      return isGreaterThan(field, object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WhereEqualTo<T> value) isEqualTo,
    required TResult Function(WhereNotEqualTo<T> value) isNotEqualTo,
    required TResult Function(WhereGreaterThan<T> value) isGreaterThan,
    required TResult Function(WhereLessThan<T> value) isLessThan,
    required TResult Function(WhereArrayContains<T> value) arrayContains,
  }) {
    return isGreaterThan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhereEqualTo<T> value)? isEqualTo,
    TResult? Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult? Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult? Function(WhereLessThan<T> value)? isLessThan,
    TResult? Function(WhereArrayContains<T> value)? arrayContains,
  }) {
    return isGreaterThan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhereEqualTo<T> value)? isEqualTo,
    TResult Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult Function(WhereLessThan<T> value)? isLessThan,
    TResult Function(WhereArrayContains<T> value)? arrayContains,
    required TResult orElse(),
  }) {
    if (isGreaterThan != null) {
      return isGreaterThan(this);
    }
    return orElse();
  }
}

abstract class WhereGreaterThan<T> extends DBWhere<T> {
  factory WhereGreaterThan({required final String field, final T? object}) =
      _$WhereGreaterThan<T>;
  WhereGreaterThan._() : super._();

  @override
  String get field;
  @override
  T? get object;
  @override
  @JsonKey(ignore: true)
  _$$WhereGreaterThanCopyWith<T, _$WhereGreaterThan<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WhereLessThanCopyWith<T, $Res>
    implements $DBWhereCopyWith<T, $Res> {
  factory _$$WhereLessThanCopyWith(
          _$WhereLessThan<T> value, $Res Function(_$WhereLessThan<T>) then) =
      __$$WhereLessThanCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String field, T? object});
}

/// @nodoc
class __$$WhereLessThanCopyWithImpl<T, $Res>
    extends _$DBWhereCopyWithImpl<T, $Res, _$WhereLessThan<T>>
    implements _$$WhereLessThanCopyWith<T, $Res> {
  __$$WhereLessThanCopyWithImpl(
      _$WhereLessThan<T> _value, $Res Function(_$WhereLessThan<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? object = freezed,
  }) {
    return _then(_$WhereLessThan<T>(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$WhereLessThan<T> extends WhereLessThan<T> {
  _$WhereLessThan({required this.field, this.object}) : super._();

  @override
  final String field;
  @override
  final T? object;

  @override
  String toString() {
    return 'DBWhere<$T>.isLessThan(field: $field, object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhereLessThan<T> &&
            (identical(other.field, field) || other.field == field) &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, field, const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhereLessThanCopyWith<T, _$WhereLessThan<T>> get copyWith =>
      __$$WhereLessThanCopyWithImpl<T, _$WhereLessThan<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field, T? object) isEqualTo,
    required TResult Function(String field, T? object) isNotEqualTo,
    required TResult Function(String field, T? object) isGreaterThan,
    required TResult Function(String field, T? object) isLessThan,
    required TResult Function(String field, T? object) arrayContains,
  }) {
    return isLessThan(field, object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field, T? object)? isEqualTo,
    TResult? Function(String field, T? object)? isNotEqualTo,
    TResult? Function(String field, T? object)? isGreaterThan,
    TResult? Function(String field, T? object)? isLessThan,
    TResult? Function(String field, T? object)? arrayContains,
  }) {
    return isLessThan?.call(field, object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field, T? object)? isEqualTo,
    TResult Function(String field, T? object)? isNotEqualTo,
    TResult Function(String field, T? object)? isGreaterThan,
    TResult Function(String field, T? object)? isLessThan,
    TResult Function(String field, T? object)? arrayContains,
    required TResult orElse(),
  }) {
    if (isLessThan != null) {
      return isLessThan(field, object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WhereEqualTo<T> value) isEqualTo,
    required TResult Function(WhereNotEqualTo<T> value) isNotEqualTo,
    required TResult Function(WhereGreaterThan<T> value) isGreaterThan,
    required TResult Function(WhereLessThan<T> value) isLessThan,
    required TResult Function(WhereArrayContains<T> value) arrayContains,
  }) {
    return isLessThan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhereEqualTo<T> value)? isEqualTo,
    TResult? Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult? Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult? Function(WhereLessThan<T> value)? isLessThan,
    TResult? Function(WhereArrayContains<T> value)? arrayContains,
  }) {
    return isLessThan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhereEqualTo<T> value)? isEqualTo,
    TResult Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult Function(WhereLessThan<T> value)? isLessThan,
    TResult Function(WhereArrayContains<T> value)? arrayContains,
    required TResult orElse(),
  }) {
    if (isLessThan != null) {
      return isLessThan(this);
    }
    return orElse();
  }
}

abstract class WhereLessThan<T> extends DBWhere<T> {
  factory WhereLessThan({required final String field, final T? object}) =
      _$WhereLessThan<T>;
  WhereLessThan._() : super._();

  @override
  String get field;
  @override
  T? get object;
  @override
  @JsonKey(ignore: true)
  _$$WhereLessThanCopyWith<T, _$WhereLessThan<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WhereArrayContainsCopyWith<T, $Res>
    implements $DBWhereCopyWith<T, $Res> {
  factory _$$WhereArrayContainsCopyWith(_$WhereArrayContains<T> value,
          $Res Function(_$WhereArrayContains<T>) then) =
      __$$WhereArrayContainsCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String field, T? object});
}

/// @nodoc
class __$$WhereArrayContainsCopyWithImpl<T, $Res>
    extends _$DBWhereCopyWithImpl<T, $Res, _$WhereArrayContains<T>>
    implements _$$WhereArrayContainsCopyWith<T, $Res> {
  __$$WhereArrayContainsCopyWithImpl(_$WhereArrayContains<T> _value,
      $Res Function(_$WhereArrayContains<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? object = freezed,
  }) {
    return _then(_$WhereArrayContains<T>(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$WhereArrayContains<T> extends WhereArrayContains<T> {
  _$WhereArrayContains({required this.field, this.object}) : super._();

  @override
  final String field;
  @override
  final T? object;

  @override
  String toString() {
    return 'DBWhere<$T>.arrayContains(field: $field, object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhereArrayContains<T> &&
            (identical(other.field, field) || other.field == field) &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, field, const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhereArrayContainsCopyWith<T, _$WhereArrayContains<T>> get copyWith =>
      __$$WhereArrayContainsCopyWithImpl<T, _$WhereArrayContains<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field, T? object) isEqualTo,
    required TResult Function(String field, T? object) isNotEqualTo,
    required TResult Function(String field, T? object) isGreaterThan,
    required TResult Function(String field, T? object) isLessThan,
    required TResult Function(String field, T? object) arrayContains,
  }) {
    return arrayContains(field, object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field, T? object)? isEqualTo,
    TResult? Function(String field, T? object)? isNotEqualTo,
    TResult? Function(String field, T? object)? isGreaterThan,
    TResult? Function(String field, T? object)? isLessThan,
    TResult? Function(String field, T? object)? arrayContains,
  }) {
    return arrayContains?.call(field, object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field, T? object)? isEqualTo,
    TResult Function(String field, T? object)? isNotEqualTo,
    TResult Function(String field, T? object)? isGreaterThan,
    TResult Function(String field, T? object)? isLessThan,
    TResult Function(String field, T? object)? arrayContains,
    required TResult orElse(),
  }) {
    if (arrayContains != null) {
      return arrayContains(field, object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WhereEqualTo<T> value) isEqualTo,
    required TResult Function(WhereNotEqualTo<T> value) isNotEqualTo,
    required TResult Function(WhereGreaterThan<T> value) isGreaterThan,
    required TResult Function(WhereLessThan<T> value) isLessThan,
    required TResult Function(WhereArrayContains<T> value) arrayContains,
  }) {
    return arrayContains(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhereEqualTo<T> value)? isEqualTo,
    TResult? Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult? Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult? Function(WhereLessThan<T> value)? isLessThan,
    TResult? Function(WhereArrayContains<T> value)? arrayContains,
  }) {
    return arrayContains?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhereEqualTo<T> value)? isEqualTo,
    TResult Function(WhereNotEqualTo<T> value)? isNotEqualTo,
    TResult Function(WhereGreaterThan<T> value)? isGreaterThan,
    TResult Function(WhereLessThan<T> value)? isLessThan,
    TResult Function(WhereArrayContains<T> value)? arrayContains,
    required TResult orElse(),
  }) {
    if (arrayContains != null) {
      return arrayContains(this);
    }
    return orElse();
  }
}

abstract class WhereArrayContains<T> extends DBWhere<T> {
  factory WhereArrayContains({required final String field, final T? object}) =
      _$WhereArrayContains<T>;
  WhereArrayContains._() : super._();

  @override
  String get field;
  @override
  T? get object;
  @override
  @JsonKey(ignore: true)
  _$$WhereArrayContainsCopyWith<T, _$WhereArrayContains<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
