// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileReference _$$_FileReferenceFromJson(Map json) => _$_FileReference(
      url: json['url'] as String?,
      path: json['path'] as String?,
      key: json['key'] as String?,
      identity: json['identity'] as String?,
      type: const ContentTypeConverter().fromJson(json['type'] as String?),
      metaData: (json['metaData'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      updatedAt:
          const DateTimeConverter().fromJson(json['updatedAt'] as Timestamp?),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_FileReferenceToJson(_$_FileReference instance) =>
    <String, dynamic>{
      'url': instance.url,
      'path': instance.path,
      'key': instance.key,
      'identity': instance.identity,
      'type': const ContentTypeConverter().toJson(instance.type),
      'metaData': instance.metaData,
      'updatedAt': const DateTimeConverter().toJson(instance.updatedAt),
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };
