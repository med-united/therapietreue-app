import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:json_annotation/json_annotation.dart';

import '../firebase/converter/timestamp_datetime.dart';

class DateTimeConverter extends TimeStampDateTimeConverter {
  const DateTimeConverter();
}
