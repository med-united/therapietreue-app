import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

import '../../apis/db/db_exception.dart';
import '../pagination/queried_list.dart';
import '../response/api_response.dart';

part 'response_collection.freezed.dart';

@Freezed(genericArgumentFactories: true)
abstract class ResponseCollection<T> with _$ResponseCollection<T> {
  const ResponseCollection._();
  const factory ResponseCollection(
      {@Default([]) List<T> items,
      ApiResponse? lastResponse,
      Object? nextToken}) = _ResponseCollection;

  ResponseCollection<T> appendQueriedList(
      ApiResponse<QueriedList<T>, DBException> queriedListResponse,
      {required Function(T object) identifier,
      Function(T object)? deleted,
      bool ascending = false}) {
    if (queriedListResponse.isData) {
      return appendList(
              queriedListResponse.dataOrNull!.items, identifier, deleted)
          .copyWith(
              nextToken: queriedListResponse.dataOrNull!.nextToken,
              lastResponse: queriedListResponse);
    } else {
      return copyWith(lastResponse: queriedListResponse);
    }
  }

  ResponseCollection<T> appendQueriedItem(ApiResponse<T, dynamic> newItem,
      {required Function(T object) identifier,
      Function(T object)? deleted,
      bool ascending = false}) {
    if (newItem.isData) {
      return appendItem(newItem.dataOrNull!, identifier, deleted)
          .copyWith(lastResponse: newItem);
    } else {
      return copyWith(lastResponse: lastResponse);
    }
  }

  ResponseCollection<T> appendList(List<T> newList,
      Function(T object) identifier, Function(T object)? deleted,
      {bool ascending = false}) {
    List<T> updatedList = [...newList, ...items];

    final ids = updatedList.map((e) => identifier(e)).toSet();
    updatedList.retainWhere((x) => ids.remove(identifier(x)));

    return copyWith(
        items: updatedList.where((e) => !(deleted?.call(e) ?? true)).toList());
  }

  ResponseCollection<T> appendItem(
      T newItem, Function(T object) identifier, Function(T object)? deleted,
      {bool ascending = false}) {
    return appendList([newItem], identifier, deleted);
  }

  ResponseCollection<T> sort(int Function(T, T) compare) {
    List<T> updatedList = items.sorted(compare);

    return copyWith(items: updatedList);
  }

  ResponseCollection<V> map<V>(V Function(T) toElement) {
    List<V> updatedList = items.map<V>((e) => toElement(e)).toList();

    return ResponseCollection<V>(items: updatedList, nextToken: nextToken);
  }

  T operator [](int index) {
    return items[index];
  }

  int get length => items.length;
}
