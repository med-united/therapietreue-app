import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:therapietreu/apis/notifications/notification_api.dart';
import 'core/utils/debug_tools.dart';
import 'core/utils/logger.dart';
import 'features/splash/splash.dart';
import 'package:flutter/material.dart';
import 'features/home/home.dart';
import 'ui/theme/theme_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!isDebug) {
    await SentryFlutter.init(
      (options) {
        options.dsn = '';
        // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
        // We recommend adjusting this value in production.
        options.sampleRate = 0.1;
      },
      appRunner: () => run(),
    );
  } else {
    run();
  }
}

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(observers: [Logger()], child: const MyApp()));
}

class Routes {
  static String home = "/home";
  static String splash = "/";
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor:
            ThemeColors.lightPrimaryBackgroundColor, // navigation bar color
        statusBarColor:
            ThemeColors.lightSecondaryBackgroundColor, // status bar color
        systemNavigationBarIconBrightness: Brightness.dark));
    return Consumer(builder: (context, ref, child) {
      ref
          .read(localNotificationProvider)
          .init((p0, p1, p2, p3) {}, (notificationResponse) {})
          .then((value) async {
        /*    ref.read(localNotificationProvider).scheduleNotification(
            DateTime.now().add(const Duration(seconds: 5)),
            int.parse("0"),
            "Therapietreue Wichtig!",
            "Medikationseinnahme: Ramipril jetzt einnehmen!"); */
      });

      return PlatformProvider(
          initialPlatform: TargetPlatform.iOS,
          builder: (context) {
            return PlatformApp(
                debugShowCheckedModeBanner: false,
                routes: {
                  Routes.home: (context) => const Home(),
                  Routes.splash: (context) => const Splash()
                },
                initialRoute: Routes.splash,
                cupertino: (__, _) => CupertinoAppData(
                        theme: const CupertinoThemeData(
                            scaffoldBackgroundColor:
                                ThemeColors.lightPrimaryBackgroundColor,
                            primaryColor: ThemeColors.primaryColor,
                            brightness: Brightness.light),
                        supportedLocales: [
                          // const Locale('en', 'US'), // English
                          const Locale('de', 'DE'), // German
                          // ... other locales the app supports
                        ],
                        localizationsDelegates: [
                          GlobalMaterialLocalizations.delegate,
                          GlobalWidgetsLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate,
                        ]));
          });
    });
  }

  void log(String msg) {
    print("main: $msg");
  }
}
