import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_where.freezed.dart';

@Freezed()
abstract class DBWhere<T> with _$DBWhere<T> {
  const DBWhere._();
  factory DBWhere.isEqualTo({required String field, T? object}) =
      WhereEqualTo<T>;
  factory DBWhere.isNotEqualTo({required String field, T? object}) =
      WhereNotEqualTo<T>;
  factory DBWhere.isGreaterThan({required String field, T? object}) =
      WhereGreaterThan<T>;
  factory DBWhere.isLessThan({required String field, T? object}) =
      WhereLessThan<T>;

  factory DBWhere.arrayContains({required String field, T? object}) =
      WhereArrayContains<T>;
}
