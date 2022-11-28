// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queried_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueriedList<T> _$$_QueriedListFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    _$_QueriedList<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      nextToken: json['nextToken'],
    );

Map<String, dynamic> _$$_QueriedListToJson<T>(
  _$_QueriedList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
      'nextToken': instance.nextToken,
    };
