// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() alreadyLinkedToAnotherAccount,
    required TResult Function() unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signedOut,
    TResult? Function()? alreadyLinkedToAnotherAccount,
    TResult? Function()? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? alreadyLinkedToAnotherAccount,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignedOut value) signedOut,
    required TResult Function(AuthAlreadyLinkedToAnotherAccount value)
        alreadyLinkedToAnotherAccount,
    required TResult Function(AuthUnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignedOut value)? signedOut,
    TResult? Function(AuthAlreadyLinkedToAnotherAccount value)?
        alreadyLinkedToAnotherAccount,
    TResult? Function(AuthUnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignedOut value)? signedOut,
    TResult Function(AuthAlreadyLinkedToAnotherAccount value)?
        alreadyLinkedToAnotherAccount,
    TResult Function(AuthUnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res, AuthException>;
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res, $Val extends AuthException>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthSignedOutCopyWith<$Res> {
  factory _$$AuthSignedOutCopyWith(
          _$AuthSignedOut value, $Res Function(_$AuthSignedOut) then) =
      __$$AuthSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignedOutCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$AuthSignedOut>
    implements _$$AuthSignedOutCopyWith<$Res> {
  __$$AuthSignedOutCopyWithImpl(
      _$AuthSignedOut _value, $Res Function(_$AuthSignedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignedOut extends AuthSignedOut {
  const _$AuthSignedOut() : super._();

  @override
  String toString() {
    return 'AuthException.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() alreadyLinkedToAnotherAccount,
    required TResult Function() unknownError,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signedOut,
    TResult? Function()? alreadyLinkedToAnotherAccount,
    TResult? Function()? unknownError,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? alreadyLinkedToAnotherAccount,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignedOut value) signedOut,
    required TResult Function(AuthAlreadyLinkedToAnotherAccount value)
        alreadyLinkedToAnotherAccount,
    required TResult Function(AuthUnknownError value) unknownError,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignedOut value)? signedOut,
    TResult? Function(AuthAlreadyLinkedToAnotherAccount value)?
        alreadyLinkedToAnotherAccount,
    TResult? Function(AuthUnknownError value)? unknownError,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignedOut value)? signedOut,
    TResult Function(AuthAlreadyLinkedToAnotherAccount value)?
        alreadyLinkedToAnotherAccount,
    TResult Function(AuthUnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class AuthSignedOut extends AuthException {
  const factory AuthSignedOut() = _$AuthSignedOut;
  const AuthSignedOut._() : super._();
}

/// @nodoc
abstract class _$$AuthAlreadyLinkedToAnotherAccountCopyWith<$Res> {
  factory _$$AuthAlreadyLinkedToAnotherAccountCopyWith(
          _$AuthAlreadyLinkedToAnotherAccount value,
          $Res Function(_$AuthAlreadyLinkedToAnotherAccount) then) =
      __$$AuthAlreadyLinkedToAnotherAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthAlreadyLinkedToAnotherAccountCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res,
        _$AuthAlreadyLinkedToAnotherAccount>
    implements _$$AuthAlreadyLinkedToAnotherAccountCopyWith<$Res> {
  __$$AuthAlreadyLinkedToAnotherAccountCopyWithImpl(
      _$AuthAlreadyLinkedToAnotherAccount _value,
      $Res Function(_$AuthAlreadyLinkedToAnotherAccount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthAlreadyLinkedToAnotherAccount
    extends AuthAlreadyLinkedToAnotherAccount {
  const _$AuthAlreadyLinkedToAnotherAccount() : super._();

  @override
  String toString() {
    return 'AuthException.alreadyLinkedToAnotherAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAlreadyLinkedToAnotherAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() alreadyLinkedToAnotherAccount,
    required TResult Function() unknownError,
  }) {
    return alreadyLinkedToAnotherAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signedOut,
    TResult? Function()? alreadyLinkedToAnotherAccount,
    TResult? Function()? unknownError,
  }) {
    return alreadyLinkedToAnotherAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? alreadyLinkedToAnotherAccount,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (alreadyLinkedToAnotherAccount != null) {
      return alreadyLinkedToAnotherAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignedOut value) signedOut,
    required TResult Function(AuthAlreadyLinkedToAnotherAccount value)
        alreadyLinkedToAnotherAccount,
    required TResult Function(AuthUnknownError value) unknownError,
  }) {
    return alreadyLinkedToAnotherAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignedOut value)? signedOut,
    TResult? Function(AuthAlreadyLinkedToAnotherAccount value)?
        alreadyLinkedToAnotherAccount,
    TResult? Function(AuthUnknownError value)? unknownError,
  }) {
    return alreadyLinkedToAnotherAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignedOut value)? signedOut,
    TResult Function(AuthAlreadyLinkedToAnotherAccount value)?
        alreadyLinkedToAnotherAccount,
    TResult Function(AuthUnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (alreadyLinkedToAnotherAccount != null) {
      return alreadyLinkedToAnotherAccount(this);
    }
    return orElse();
  }
}

abstract class AuthAlreadyLinkedToAnotherAccount extends AuthException {
  const factory AuthAlreadyLinkedToAnotherAccount() =
      _$AuthAlreadyLinkedToAnotherAccount;
  const AuthAlreadyLinkedToAnotherAccount._() : super._();
}

/// @nodoc
abstract class _$$AuthUnknownErrorCopyWith<$Res> {
  factory _$$AuthUnknownErrorCopyWith(
          _$AuthUnknownError value, $Res Function(_$AuthUnknownError) then) =
      __$$AuthUnknownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnknownErrorCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$AuthUnknownError>
    implements _$$AuthUnknownErrorCopyWith<$Res> {
  __$$AuthUnknownErrorCopyWithImpl(
      _$AuthUnknownError _value, $Res Function(_$AuthUnknownError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUnknownError extends AuthUnknownError {
  const _$AuthUnknownError() : super._();

  @override
  String toString() {
    return 'AuthException.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthUnknownError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() alreadyLinkedToAnotherAccount,
    required TResult Function() unknownError,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signedOut,
    TResult? Function()? alreadyLinkedToAnotherAccount,
    TResult? Function()? unknownError,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? alreadyLinkedToAnotherAccount,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignedOut value) signedOut,
    required TResult Function(AuthAlreadyLinkedToAnotherAccount value)
        alreadyLinkedToAnotherAccount,
    required TResult Function(AuthUnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignedOut value)? signedOut,
    TResult? Function(AuthAlreadyLinkedToAnotherAccount value)?
        alreadyLinkedToAnotherAccount,
    TResult? Function(AuthUnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignedOut value)? signedOut,
    TResult Function(AuthAlreadyLinkedToAnotherAccount value)?
        alreadyLinkedToAnotherAccount,
    TResult Function(AuthUnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class AuthUnknownError extends AuthException {
  const factory AuthUnknownError() = _$AuthUnknownError;
  const AuthUnknownError._() : super._();
}
