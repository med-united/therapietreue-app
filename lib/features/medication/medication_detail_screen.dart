import "package:flutter/material.dart";
import 'package:therapietreu/ui/theme/theme_navigation_bar.dart';
import 'package:therapietreu/ui/theme/theme_scaffold.dart';
import 'package:therapietreu/ui/theme/theme_text.dart';

class MedicationDetailScreen extends StatelessWidget {
  dynamic content;
  MedicationDetailScreen(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
        navigationBar: ThemeNavigationBar(
          context,
          title: "",
          showBackButton: true,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemeHeadlineSText("Name des Medikaments"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemeHeadlineSText(
                content["name"],
                textAlign: TextAlign.center,
                maxLines: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemeHeadlineSText("Packungsgröße des Medikaments"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemeHeadlineSText(
                content["packaging"]["quantity"] ?? "-",
                maxLines: 20,
              ),
            )
          ],
        ));
  }
}
