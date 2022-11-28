import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void showDebugErrorToast(String msg, [String vars = ""]) {
  if (isDebug) {
    debugPrint("TOASTING $msg ${vars.toString()}");
    Fluttertoast.showToast(
        msg: "$msg ${vars.toString()}",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER);
  }
}

void showReleaseErrorToast(String msg, [String vars = ""]) {
  Fluttertoast.showToast(
      msg: "$msg ${vars.toString()}",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER);
}

bool get isDebug {
  return kDebugMode;
}

class CustomException implements Exception {
  String cause;
  CustomException(this.cause);
}

Future<void> sendSentryReport(
    {required dynamic exception, required StackTrace stackTrace}) async {
  print("sending sentry report");
  await Sentry.captureException(
    exception,
    stackTrace: stackTrace,
  );
}
