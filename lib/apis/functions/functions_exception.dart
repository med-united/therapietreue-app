import 'package:freezed_annotation/freezed_annotation.dart';

part 'functions_exception.freezed.dart';

@freezed
abstract class FunctionsException with _$FunctionsException {
  const FunctionsException._();

  const factory FunctionsException.unauthenticated() = FunctionsUnauthenticated;
}
