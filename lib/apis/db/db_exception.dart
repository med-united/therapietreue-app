import 'package:freezed_annotation/freezed_annotation.dart';
part 'db_exception.freezed.dart';

@freezed
abstract class DBException with _$DBException {
  const DBException._();

  const factory DBException.unauthenticated() = DBUnauthenticated;

  const factory DBException.noInternetConnection() = DBNoInternetConnection;
  const factory DBException.serviceUnavailable() = DBServiceUnavailable;
  const factory DBException.versionConflict() = DBVersionConflict;

  const factory DBException.nullResponse() = DBNullResponse;
  const factory DBException.unknownError() = DBUnknownError;

  const factory DBException.internalError() = DBInternalError;
}
