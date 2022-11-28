import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/apis/notifications/local/local_notification_api.dart';

import 'firebase/firebase_notification_api.dart';

Provider<NotificationApi> notificationProvider =
    Provider((ref) => FirebaseNotificationApi());

Provider<LocalNotificationApi> localNotificationProvider =
    Provider((ref) => LocalNotifications(ref));

abstract class NotificationApi {
  NotificationApi();

  Future<String?> getToken();
}

abstract class LocalNotificationApi {
  LocalNotificationApi();

  Future<void> init(
      void Function(int, String?, String?, String?)?
          onDidReceiveLocalNotification,
      void Function(NotificationResponse)? onDidReceiveNotificationResponse);

  Future<String?> scheduleNotification(
      DateTime startDateTime, int channelId, String title, String body);
}
