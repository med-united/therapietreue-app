import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/ui/theme/theme_primary_button.dart';

import '../medication/medication_tab.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  int tabIndex = 0;

  final tabs = [
    const MedicationTab(),
    Scaffold(
      body: Center(
          child: Container(
        margin: const EdgeInsets.all(32),
        child: ThemePrimaryButton(
          onPressed: () async {},
          title: "Keycloak Login",
          textColor: Colors.white,
        ),
      )),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: SafeArea(
          bottom: false,
          child: tabs[tabIndex],
        ),
        bottomNavigationBar: CupertinoTabBar(
          onTap: changeTab,
          currentIndex: tabIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.medical_information_outlined)),
            BottomNavigationBarItem(
                icon: Icon(
              Icons.medication_liquid,
              color: Colors.transparent,
            ))
          ],
        ));
  }

  void changeTab(int index) {
    setState(() {
      tabIndex = 0;
    });
  }
}
