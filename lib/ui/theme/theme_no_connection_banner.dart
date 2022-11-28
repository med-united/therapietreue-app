/* import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/api_connection.dart';

class ThemeNoConnectionBanner extends ConsumerWidget {
  const ThemeNoConnectionBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var apiConnnectionState = ref.watch(requestHandlerProvider);

    if (apiConnnectionState == ApiConnnectionState.Connected) {
      return SizedBox();
    }

    return GestureDetector(
      child: ThemeOverlayCard(
        child: Container(
          height: 64,
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (apiConnnectionState != ApiConnnectionState.Connected)
                  ThemeIcons.errorIcon(size: 24)
                else
                  ThemeIcons.plantIcon(color: ThemeConstants.primaryColor),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildTitle(apiConnnectionState),
                      buildSubTitle(apiConnnectionState)
                    ],
                  ),
                ),
                if (apiConnnectionState == ApiConnnectionState.Reconnecting)
                  ThemeProgressIndicator()
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        ref.read(requestHandlerProvider.notifier).reconnect();
      },
    );
  }

  Widget buildSubTitle(apiConnnectionState) {
    if (apiConnnectionState == ApiConnnectionState.Disconnected) {
      return ThemeBodySmallText(
        "Klicke, um wieder zu verbinden.",
        textColor: ThemeTextColor.Light,
      );
    } else if (apiConnnectionState == ApiConnnectionState.Reconnecting) {
      return ThemeBodySmallText("Wir versuchen eine Verbindung herzustellen",
          textColor: ThemeTextColor.Light);
    } else if (apiConnnectionState == ApiConnnectionState.Connected) {
      return ThemeBodySmallText("Du kannst nun alle Funktionen nutzen",
          textColor: ThemeTextColor.Light);
    }
    return ThemeBodySmallText("ERROR", textColor: ThemeTextColor.Light);
  }

  Widget buildTitle(apiConnnectionState) {
    if (apiConnnectionState == ApiConnnectionState.Disconnected) {
      return ThemeBodyText(
        "Keine Verbindung",
        textColor: ThemeTextColor.Light,
      );
    } else if (apiConnnectionState == ApiConnnectionState.Reconnecting) {
      return ThemeBodyText("Neu verbinden", textColor: ThemeTextColor.Light);
    } else if (apiConnnectionState == ApiConnnectionState.Connected) {
      return ThemeBodyText("Verbunden", textColor: ThemeTextColor.Light);
    }
    return ThemeBodyText("NO STATE", textColor: ThemeTextColor.Light);
  }
}
 */