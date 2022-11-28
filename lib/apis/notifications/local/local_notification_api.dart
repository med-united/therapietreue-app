import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/apis/notifications/notification_api.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocalNotifications extends LocalNotificationApi {
  Ref ref;
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  LocalNotifications(this.ref);

  @override
  Future<String?> scheduleNotification(
      DateTime dateTime, int channelId, String title, String body) async {
    assert(flutterLocalNotificationsPlugin != null, "init the plugin first");

    await flutterLocalNotificationsPlugin!.zonedSchedule(
        channelId,
        title,
        body,
        tz.TZDateTime.from(dateTime, tz.getLocation('Europe/Berlin')),
        //  tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
        NotificationDetails(
            android: AndroidNotificationDetails(
                channelId.toStringAsFixed(0), 'your channel name',
                channelDescription: 'your channel description')),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.dateAndTime);
    return null;
  }

  @override
  Future<void> init(
      void Function(int, String?, String?, String?)?
          onDidReceiveLocalNotification,
      void Function(NotificationResponse)?
          onDidReceiveNotificationResponse) async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_launcher');

    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
            onDidReceiveLocalNotification: onDidReceiveLocalNotification,
            requestCriticalPermission: true);

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin,
            macOS: initializationSettingsDarwin);
    await flutterLocalNotificationsPlugin!.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);

    tz.initializeTimeZones();
    //tz.setLocalLocation(tz.getLocation("de_de"));

    final bool? result = await flutterLocalNotificationsPlugin!
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }
}
