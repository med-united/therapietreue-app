// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponseCollection<T> {
  List<T> get items => throw _privateConstructorUsedError;
  ApiResponse<dynamic, dynamic>? get lastResponse =>
      throw _privateConstructorUsedError;
  Object? get nextToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseCollectionCopyWith<T, ResponseCollection<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCollectionCopyWith<T, $Res> {
  factory $ResponseCollectionCopyWith(ResponseCollection<T> value,
          $Res Function(ResponseCollection<T>) then) =
      _$ResponseCollectionCopyWithImpl<T, $Res, ResponseCollection<T>>;
  @useResult
  $Res call(
      {List<T> items,
      ApiResponse<dynamic, dynamic>? lastResponse,
      Object? nextToken});

  $ApiResponseCopyWith<dynamic, dynamic, $Res>? get lastResponse;
}

/// @nodoc
class _$ResponseCollectionCopyWithImpl<T, $Res,
        $Val extends ResponseCollection<T>>
    implements $ResponseCollectionCopyWith<T, $Res> {
  _$ResponseCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? lastResponse = freezed,
    Object? nextToken = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      lastResponse: freezed == lastResponse
          ? _value.lastResponse
          : lastResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic, dynamic>?,
      nextToken: freezed == nextToken ? _value.nextToken : nextToken,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<dynamic, dynamic, $Res>? get lastResponse {
    if (_value.lastResponse == null) {
      return null;
    }

    return $ApiResponseCopyWith<dynamic, dynamic, $Res>(_value.lastResponse!,
        (value) {
      return _then(_value.copyWith(lastResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponseCollectionCopyWith<T, $Res>
    implements $ResponseCollectionCopyWith<T, $Res> {
  factory _$$_ResponseCollectionCopyWith(_$_ResponseCollection<T> value,
          $Res Function(_$_ResponseCollection<T>) then) =
      __$$_ResponseCollectionCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> items,
      ApiResponse<dynamic, dynamic>? lastResponse,
      Object? nextToken});

  @override
  $ApiResponseCopyWith<dynamic, dynamic, $Res>? get lastResponse;
}

/// @nodoc
class __$$_ResponseCollectionCopyWithImpl<T, $Res>
    extends _$ResponseCollectionCopyWithImpl<T, $Res, _$_ResponseCollection<T>>
    implements _$$_ResponseCollectionCopyWith<T, $Res> {
  __$$_ResponseCollectionCopyWithImpl(_$_ResponseCollection<T> _value,
      $Res Function(_$_ResponseCollection<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? lastResponse = freezed,
    Object? nextToken = freezed,
  }) {
    return _then(_$_ResponseCollection<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      lastResponse: freezed == lastResponse
          ? _value.lastResponse
          : lastResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic, dynamic>?,
      nextToken: freezed == nextToken ? _value.nextToken : nextToken,
    ));
  }
}

/// @nodoc

class _$_ResponseCollection<T> extends _ResponseCollection<T> {
  const _$_ResponseCollection(
      {final List<T> items = const [], this.lastResponse, this.nextToken})
      : _items = items,
        super._();

  final List<T> _items;
  @override
  @JsonKey()
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final ApiResponse<dynamic, dynamic>? lastResponse;
  @override
  final Object? nextToken;

  @override
  String toString() {
    return 'ResponseCollection<$T>(items: $items, lastResponse: $lastResponse, nextToken: $nextToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseCollection<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.lastResponse, lastResponse) ||
                other.lastResponse == lastResponse) &&
            const DeepCollectionEquality().equals(other.nextToken, nextToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      lastResponse,
      const DeepCollectionEquality().hash(nextToken));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseCollectionCopyWith<T, _$_ResponseCollection<T>> get copyWith =>
      __$$_ResponseCollectionCopyWithImpl<T, _$_ResponseCollection<T>>(
          this, _$identity);
}

abstract class _ResponseCollection<T> extends ResponseCollection<T> {
  const factory _ResponseCollection(
      {final List<T> items,
      final ApiResponse<dynamic, dynamic>? lastResponse,
      final Object? nextToken}) = _$_ResponseCollection<T>;
  const _ResponseCollection._() : super._();

  @override
  List<T> get items;
  @override
  ApiResponse<dynamic, dynamic>? get lastResponse;
  @override
  Object? get nextToken;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCollectionCopyWith<T, _$_ResponseCollection<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
