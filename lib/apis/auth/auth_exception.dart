import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_exception.freezed.dart';

@freezed
abstract class AuthException with _$AuthException {
  const AuthException._();
  const factory AuthException.signedOut() = AuthSignedOut;
  const factory AuthException.alreadyLinkedToAnotherAccount() =
      AuthAlreadyLinkedToAnotherAccount;
  const factory AuthException.unknownError() = AuthUnknownError;

/*   const factory AuthException.noInternetConnection() = AuthNoInternetConnection;

  const factory AuthException.serviceUnavailable() = AuthServiceUnavailable;

  const factory AuthException.unknownError() = AuthUnknownError;

  const factory AuthException.internalError() = AuthInternalError; */
}
