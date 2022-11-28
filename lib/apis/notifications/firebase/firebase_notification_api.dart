import 'package:firebase_messaging/firebase_messaging.dart';

import '../notification_api.dart';

class FirebaseNotificationApi extends NotificationApi {
  FirebaseNotificationApi();

  @override
  Future<String?> getToken() {
    return FirebaseMessaging.instance.getToken();
  }

  void log(String msg) {
    print("NotificationApi: ${msg}");
  }
}
