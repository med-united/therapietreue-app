import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

PageRoute<T> themePageRoute<T>({
  required BuildContext context,
  WidgetBuilder? builder,
  RouteSettings? settings,
  bool? maintainState,
  bool? fullscreenDialog,
  String? iosTitle,
}) {
  return platformPageRoute(
      context: context,
      builder: builder,
      settings: settings,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
      iosTitle: iosTitle);
}
