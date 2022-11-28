import 'package:uuid/uuid.dart';
import 'datetime_extend.dart';

class IDGen {
  static String get createID => Uuid().v4();
  static String get createTimeStamp =>
      DateTimeMock.now().millisecondsSinceEpoch.toStringAsFixed(0);
}
