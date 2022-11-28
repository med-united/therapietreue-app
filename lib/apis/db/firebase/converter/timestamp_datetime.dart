import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:json_annotation/json_annotation.dart';

class TimeStampDateTimeConverter
    implements JsonConverter<DateTime?, Timestamp?> {
  const TimeStampDateTimeConverter();

  @override
  DateTime? fromJson(Timestamp? json) => json == null ? null : json.toDate();
  @override
  Timestamp? toJson(DateTime? object) =>
      (object != null) ? Timestamp.fromDate(object) : null;
} 
/* class DateTimeConverter implements JsonConverter<DateTime?, int?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(int? json) =>
      json == null ? null : DateTime.fromMillisecondsSinceEpoch(json);
  @override
  int? toJson(DateTime? object) =>
      (object != null) ? object.millisecondsSinceEpoch : null;
}
 */