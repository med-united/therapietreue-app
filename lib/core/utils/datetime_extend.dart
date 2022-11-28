import 'package:intl/intl.dart';

import 'debug_tools.dart';

extension Formatter on DateTime {
  String toLocalFormat() {
    return new DateFormat("dd. MMMM", "de_De").format(this);
  }

  int dayDifferenceTo(DateTime other) {
    Duration diff = difference(other);
    int days = diff.inDays;

    //do we have to add another day?
    if (diff.inHours % 24 + hour > 24) {
      days++;
    }

    return days;
  }
}

extension DateTimeMock on DateTime {
  static DateTime now() {
    if (isDebug) {
      return DateTime.now().add(Duration(days: 52));
    } else {
      return DateTime.now();
    }
  }
}
