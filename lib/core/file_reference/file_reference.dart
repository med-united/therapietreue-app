import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapietreu/apis/db/converter/datetime.dart';

part 'file_reference.g.dart';
part 'file_reference.freezed.dart';

@unfreezed
class FileReference with _$FileReference {
  FileReference._();

  bool get isData => localData != null;
  bool get isFile => localFile != null;

  @ContentTypeConverter()
  @DateTimeConverter()
  factory FileReference(
      {
      // either
      final String? url,
      final String? path,
      // or
      final String? key,
      final String? identity,
      // common
      final ContentType? type,
      final Map<String, dynamic>? metaData,
      final DateTime? updatedAt,
      final DateTime? createdAt,
      @JsonKey(ignore: true) int? position,
      @JsonKey(ignore: true) File? localFile,
      @JsonKey(ignore: true) Uint8List? localData}) = _FileReference;

  factory FileReference.fromJson(Map<String, dynamic> json) =>
      _$FileReferenceFromJson(json);
}

enum ContentType { Text, Image, Video }

class ContentTypeConverter implements JsonConverter<ContentType?, String?> {
  const ContentTypeConverter();

  @override
  ContentType? fromJson(String? json) =>
      json == null ? null : EnumToString.fromString(ContentType.values, json);
  @override
  String? toJson(ContentType? object) =>
      (object != null) ? EnumToString.convertToString(object) : null;
}
