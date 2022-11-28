// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'functions_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FunctionsException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FunctionsUnauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FunctionsUnauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FunctionsUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionsExceptionCopyWith<$Res> {
  factory $FunctionsExceptionCopyWith(
          FunctionsException value, $Res Function(FunctionsException) then) =
      _$FunctionsExceptionCopyWithImpl<$Res, FunctionsException>;
}

/// @nodoc
class _$FunctionsExceptionCopyWithImpl<$Res, $Val extends FunctionsException>
    implements $FunctionsExceptionCopyWith<$Res> {
  _$FunctionsExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FunctionsUnauthenticatedCopyWith<$Res> {
  factory _$$FunctionsUnauthenticatedCopyWith(_$FunctionsUnauthenticated value,
          $Res Function(_$FunctionsUnauthenticated) then) =
      __$$FunctionsUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FunctionsUnauthenticatedCopyWithImpl<$Res>
    extends _$FunctionsExceptionCopyWithImpl<$Res, _$FunctionsUnauthenticated>
    implements _$$FunctionsUnauthenticatedCopyWith<$Res> {
  __$$FunctionsUnauthenticatedCopyWithImpl(_$FunctionsUnauthenticated _value,
      $Res Function(_$FunctionsUnauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FunctionsUnauthenticated extends FunctionsUnauthenticated {
  const _$FunctionsUnauthenticated() : super._();

  @override
  String toString() {
    return 'FunctionsException.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionsUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FunctionsUnauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FunctionsUnauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FunctionsUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class FunctionsUnauthenticated extends FunctionsException {
  const factory FunctionsUnauthenticated() = _$FunctionsUnauthenticated;
  const FunctionsUnauthenticated._() : super._();
}
