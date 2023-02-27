// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponse<T, U> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(U? error) error,
    required TResult Function(DateTime? startedAt) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(U? error)? error,
    TResult? Function(DateTime? startedAt)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(U? error)? error,
    TResult Function(DateTime? startedAt)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiData<T, U> value) data,
    required TResult Function(ApiError<T, U> value) error,
    required TResult Function(ApiLoading<T, U> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiData<T, U> value)? data,
    TResult? Function(ApiError<T, U> value)? error,
    TResult? Function(ApiLoading<T, U> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiData<T, U> value)? data,
    TResult Function(ApiError<T, U> value)? error,
    TResult Function(ApiLoading<T, U> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, U, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T, U> value, $Res Function(ApiResponse<T, U>) then) =
      _$ApiResponseCopyWithImpl<T, U, $Res, ApiResponse<T, U>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, U, $Res, $Val extends ApiResponse<T, U>>
    implements $ApiResponseCopyWith<T, U, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiDataCopyWith<T, U, $Res> {
  factory _$$ApiDataCopyWith(
          _$ApiData<T, U> value, $Res Function(_$ApiData<T, U>) then) =
      __$$ApiDataCopyWithImpl<T, U, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ApiDataCopyWithImpl<T, U, $Res>
    extends _$ApiResponseCopyWithImpl<T, U, $Res, _$ApiData<T, U>>
    implements _$$ApiDataCopyWith<T, U, $Res> {
  __$$ApiDataCopyWithImpl(
      _$ApiData<T, U> _value, $Res Function(_$ApiData<T, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiData<T, U>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ApiData<T, U> extends ApiData<T, U> {
  _$ApiData({required this.data}) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResponse<$T, $U>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiData<T, U> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiDataCopyWith<T, U, _$ApiData<T, U>> get copyWith =>
      __$$ApiDataCopyWithImpl<T, U, _$ApiData<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(U? error) error,
    required TResult Function(DateTime? startedAt) loading,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(U? error)? error,
    TResult? Function(DateTime? startedAt)? loading,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(U? error)? error,
    TResult Function(DateTime? startedAt)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiData<T, U> value) data,
    required TResult Function(ApiError<T, U> value) error,
    required TResult Function(ApiLoading<T, U> value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiData<T, U> value)? data,
    TResult? Function(ApiError<T, U> value)? error,
    TResult? Function(ApiLoading<T, U> value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiData<T, U> value)? data,
    TResult Function(ApiError<T, U> value)? error,
    TResult Function(ApiLoading<T, U> value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ApiData<T, U> extends ApiResponse<T, U> {
  factory ApiData({required final T data}) = _$ApiData<T, U>;
  ApiData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$ApiDataCopyWith<T, U, _$ApiData<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiErrorCopyWith<T, U, $Res> {
  factory _$$ApiErrorCopyWith(
          _$ApiError<T, U> value, $Res Function(_$ApiError<T, U>) then) =
      __$$ApiErrorCopyWithImpl<T, U, $Res>;
  @useResult
  $Res call({U? error});
}

/// @nodoc
class __$$ApiErrorCopyWithImpl<T, U, $Res>
    extends _$ApiResponseCopyWithImpl<T, U, $Res, _$ApiError<T, U>>
    implements _$$ApiErrorCopyWith<T, U, $Res> {
  __$$ApiErrorCopyWithImpl(
      _$ApiError<T, U> _value, $Res Function(_$ApiError<T, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ApiError<T, U>(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as U?,
    ));
  }
}

/// @nodoc

class _$ApiError<T, U> extends ApiError<T, U> {
  _$ApiError({this.error}) : super._();

  @override
  final U? error;

  @override
  String toString() {
    return 'ApiResponse<$T, $U>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiError<T, U> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorCopyWith<T, U, _$ApiError<T, U>> get copyWith =>
      __$$ApiErrorCopyWithImpl<T, U, _$ApiError<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(U? error) error,
    required TResult Function(DateTime? startedAt) loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(U? error)? error,
    TResult? Function(DateTime? startedAt)? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(U? error)? error,
    TResult Function(DateTime? startedAt)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiData<T, U> value) data,
    required TResult Function(ApiError<T, U> value) error,
    required TResult Function(ApiLoading<T, U> value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiData<T, U> value)? data,
    TResult? Function(ApiError<T, U> value)? error,
    TResult? Function(ApiLoading<T, U> value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiData<T, U> value)? data,
    TResult Function(ApiError<T, U> value)? error,
    TResult Function(ApiLoading<T, U> value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ApiError<T, U> extends ApiResponse<T, U> {
  factory ApiError({final U? error}) = _$ApiError<T, U>;
  ApiError._() : super._();

  U? get error;
  @JsonKey(ignore: true)
  _$$ApiErrorCopyWith<T, U, _$ApiError<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiLoadingCopyWith<T, U, $Res> {
  factory _$$ApiLoadingCopyWith(
          _$ApiLoading<T, U> value, $Res Function(_$ApiLoading<T, U>) then) =
      __$$ApiLoadingCopyWithImpl<T, U, $Res>;
  @useResult
  $Res call({DateTime? startedAt});
}

/// @nodoc
class __$$ApiLoadingCopyWithImpl<T, U, $Res>
    extends _$ApiResponseCopyWithImpl<T, U, $Res, _$ApiLoading<T, U>>
    implements _$$ApiLoadingCopyWith<T, U, $Res> {
  __$$ApiLoadingCopyWithImpl(
      _$ApiLoading<T, U> _value, $Res Function(_$ApiLoading<T, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = freezed,
  }) {
    return _then(_$ApiLoading<T, U>(
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ApiLoading<T, U> extends ApiLoading<T, U> {
  _$ApiLoading({this.startedAt}) : super._();

  @override
  final DateTime? startedAt;

  @override
  String toString() {
    return 'ApiResponse<$T, $U>.loading(startedAt: $startedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiLoading<T, U> &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiLoadingCopyWith<T, U, _$ApiLoading<T, U>> get copyWith =>
      __$$ApiLoadingCopyWithImpl<T, U, _$ApiLoading<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(U? error) error,
    required TResult Function(DateTime? startedAt) loading,
  }) {
    return loading(startedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(U? error)? error,
    TResult? Function(DateTime? startedAt)? loading,
  }) {
    return loading?.call(startedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(U? error)? error,
    TResult Function(DateTime? startedAt)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(startedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiData<T, U> value) data,
    required TResult Function(ApiError<T, U> value) error,
    required TResult Function(ApiLoading<T, U> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiData<T, U> value)? data,
    TResult? Function(ApiError<T, U> value)? error,
    TResult? Function(ApiLoading<T, U> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiData<T, U> value)? data,
    TResult Function(ApiError<T, U> value)? error,
    TResult Function(ApiLoading<T, U> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ApiLoading<T, U> extends ApiResponse<T, U> {
  factory ApiLoading({final DateTime? startedAt}) = _$ApiLoading<T, U>;
  ApiLoading._() : super._();

  DateTime? get startedAt;
  @JsonKey(ignore: true)
  _$$ApiLoadingCopyWith<T, U, _$ApiLoading<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}
