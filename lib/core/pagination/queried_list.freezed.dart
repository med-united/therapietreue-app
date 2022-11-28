// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'queried_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueriedList<T> _$QueriedListFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _QueriedList<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$QueriedList<T> {
  List<T> get items => throw _privateConstructorUsedError;
  Object? get nextToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueriedListCopyWith<T, QueriedList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueriedListCopyWith<T, $Res> {
  factory $QueriedListCopyWith(
          QueriedList<T> value, $Res Function(QueriedList<T>) then) =
      _$QueriedListCopyWithImpl<T, $Res, QueriedList<T>>;
  @useResult
  $Res call({List<T> items, Object? nextToken});
}

/// @nodoc
class _$QueriedListCopyWithImpl<T, $Res, $Val extends QueriedList<T>>
    implements $QueriedListCopyWith<T, $Res> {
  _$QueriedListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextToken = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextToken: freezed == nextToken ? _value.nextToken : nextToken,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueriedListCopyWith<T, $Res>
    implements $QueriedListCopyWith<T, $Res> {
  factory _$$_QueriedListCopyWith(
          _$_QueriedList<T> value, $Res Function(_$_QueriedList<T>) then) =
      __$$_QueriedListCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items, Object? nextToken});
}

/// @nodoc
class __$$_QueriedListCopyWithImpl<T, $Res>
    extends _$QueriedListCopyWithImpl<T, $Res, _$_QueriedList<T>>
    implements _$$_QueriedListCopyWith<T, $Res> {
  __$$_QueriedListCopyWithImpl(
      _$_QueriedList<T> _value, $Res Function(_$_QueriedList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextToken = freezed,
  }) {
    return _then(_$_QueriedList<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextToken: freezed == nextToken ? _value.nextToken : nextToken,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_QueriedList<T> extends _QueriedList<T> {
  const _$_QueriedList({required final List<T> items, this.nextToken})
      : _items = items,
        super._();

  factory _$_QueriedList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_QueriedListFromJson(json, fromJsonT);

  final List<T> _items;
  @override
  List<T> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Object? nextToken;

  @override
  String toString() {
    return 'QueriedList<$T>(items: $items, nextToken: $nextToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueriedList<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.nextToken, nextToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(nextToken));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueriedListCopyWith<T, _$_QueriedList<T>> get copyWith =>
      __$$_QueriedListCopyWithImpl<T, _$_QueriedList<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_QueriedListToJson<T>(this, toJsonT);
  }
}

abstract class _QueriedList<T> extends QueriedList<T> {
  const factory _QueriedList(
      {required final List<T> items,
      final Object? nextToken}) = _$_QueriedList<T>;
  const _QueriedList._() : super._();

  factory _QueriedList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_QueriedList<T>.fromJson;

  @override
  List<T> get items;
  @override
  Object? get nextToken;
  @override
  @JsonKey(ignore: true)
  _$$_QueriedListCopyWith<T, _$_QueriedList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
