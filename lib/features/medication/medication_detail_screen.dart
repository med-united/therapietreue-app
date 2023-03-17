import "package:flutter/material.dart";
import 'package:therapietreu/ui/theme/theme_navigation_bar.dart';
import 'package:therapietreu/ui/theme/theme_scaffold.dart';
import 'package:therapietreu/ui/theme/theme_text.dart';

import '../../ui/theme/theme_colors.dart';

class MedicationDetailScreen extends StatelessWidget {
  dynamic content;
  MedicationDetailScreen(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: ThemeColors.primaryColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: Container(
                color: ThemeColors.secondaryColor,
                height: 1.0,
              )),
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
