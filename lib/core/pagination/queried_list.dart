import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'queried_list.freezed.dart';
part 'queried_list.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class QueriedList<T> with _$QueriedList<T> {
  const QueriedList._();
  const factory QueriedList({required List<T> items, Object? nextToken}) =
      _QueriedList;

  factory QueriedList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$QueriedListFromJson<T>(json, fromJsonT);

  QueriedList<T> appendListUnique(List<T> newList,
      Function(T object) identifier, Function(T object)? deleted,
      {bool ascending = false}) {
    List<T> updatedList = [...newList, ...items];

    final ids = updatedList.map((e) => identifier(e)).toSet();
    updatedList.retainWhere((x) => ids.remove(identifier(x)));

    return copyWith(
        items: updatedList.where((e) => deleted?.call(e) ?? true).toList());
  }

  @Deprecated("Use ResponseCollection to stack lists")
  QueriedList<T> appendQueriedList(QueriedList<T> queriedList,
      Function(T object) identifier, Function(T object)? deleted,
      {bool ascending = false}) {
    return appendListUnique(queriedList.items, identifier, deleted)
        .copyWith(nextToken: queriedList.nextToken);
  }

  @Deprecated("Use ResponseCollection to stack items")
  QueriedList<T> appendItem(
      T newItem, Function(T object) identifier, Function(T object)? deleted,
      {bool ascending = false}) {
    return appendListUnique([newItem], identifier, deleted);
  }

  QueriedList<T> sort(int Function(T, T) compare) {
    List<T> updatedList = items.sorted(compare);

    return copyWith(items: updatedList);
  }

  QueriedList<V> map<V>(V Function(T) toElement) {
    List<V> updatedList = items.map<V>((e) => toElement(e)).toList();

    return QueriedList<V>(items: updatedList, nextToken: nextToken);
  }

  T operator [](int index) {
    return items[index];
  }

  int get length => items.length;
}
