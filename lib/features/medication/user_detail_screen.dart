import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:therapietreu/core/utils/debug_tools.dart';
import 'package:therapietreu/features/medication/domain/doctor.dart';
import 'package:therapietreu/features/medication/medication_tab.dart';
import 'package:therapietreu/features/user/domain/user.dart';
import 'package:therapietreu/ui/theme/theme_colors.dart';
import 'package:therapietreu/ui/theme/theme_navigation_bar.dart';
import 'package:therapietreu/ui/theme/theme_primary_button.dart';
import 'package:therapietreu/ui/theme/theme_scaffold.dart';
import 'package:therapietreu/ui/theme/theme_text.dart';
import 'package:therapietreu/ui/theme/theme_textfield.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';

import 'domain/medication.dart';
import 'domain/medication_plan.dart';

String morning = "8:00";
String midday = "12:00";
String evening = "18:00";
String night = "22:00";

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({Key? key}) : super(key: key);

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    nameController.text = name;

    TextEditingController bdayController = TextEditingController();
    bdayController.text = "13.06.1951";
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 32, left: 32, top: 32, bottom: 32),
                child: CircleAvatar(
                  radius: 82,
                  backgroundColor: ThemeColors.primaryColor,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () async {
                      final ImagePicker picker = ImagePicker();
                      // Pick an image

                      // showDebugErrorToast(picker.toString());
                      final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);

                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString("image", image!.path);

                      setState(() {
                        path = image.path;
                      });
                    },
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(File(path)),
                      backgroundColor: ThemeColors.primaryColor,
                      child: ThemeBodySText(
                        (path == "") ? "Bild \n hinzufügen" : "",
                        textAlign: TextAlign.center,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
                child: Column(
                  children: [
                    ThemeTextfield(
                      backgroundColor: const Color(0xffebf2f7),
                      hint: "  Name",
                      controller: nameController,
                    ),
                    ThemePrimaryButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        //await prefs.setString("image", path);
                        await prefs.setString(
                            "name", nameController.text.trim());

                        showDebugErrorToast(path);

                        Navigator.of(context).pop(path);
                      },
                      title: "Speichern",
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              ThemeHeadlineSText("Benachrichtigungszeiten"),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ThemeHeadlineSText("Morgen"),
                        ThemeHeadlineSText(morning)
                      ],
                    ),
                  ),
                  onTap: () {
                    // showDebugErrorToast(morning);
/*                     showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Theme(
                          data: ThemeData.light(),
                          child: Container(
                            height: 300,
                            color: Colors.black,
                            child: CupertinoDatePicker(
                                use24hFormat: true,
                                mode: CupertinoDatePickerMode.time,
                                backgroundColor: Colors.white,
                                initialDateTime: DateTime(2000, 1, 1,
                                    int.parse(morning.split(":")[0]), 0),
                                onDateTimeChanged: (val) {
                                  /*  setState(() {
                                morning = formatTime(val.hour, val.minute);
                              }); */
                                }),
                          ), // This will change to light theme.
                        );
                      },
                    ); */
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ThemeHeadlineSText("Mittag"),
                        ThemeHeadlineSText(midday)
                      ],
                    ),
                  ),
                  onTap: () {
                    /*  showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Theme(
                          data: ThemeData.light(),
                          child: Container(
                            height: 300,
                            color: Colors.black,
                            child: CupertinoDatePicker(
                                use24hFormat: true,
                                mode: CupertinoDatePickerMode.time,
                                backgroundColor: Colors.white,
                                initialDateTime: DateTime(2000, 1, 1,
                                    int.parse(midday.split(":")[0]), 0),
                                onDateTimeChanged: (val) {
                                  /*  setState(() {
                                midday = formatTime(val.hour, val.minute);
                              }); */
                                }),
                          ), // This will change to light theme.
                        );
                      },
                    ); */
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ThemeHeadlineSText("Abend"),
                        ThemeHeadlineSText(evening)
                      ],
                    ),
                  ),
                  onTap: () {
                    /* showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Theme(
                          data: ThemeData.light(),
                          child: Container(
                            height: 300,
                            color: Colors.black,
                            child: CupertinoDatePicker(
                                use24hFormat: true,
                                mode: CupertinoDatePickerMode.time,
                                backgroundColor: Colors.white,
                                initialDateTime: DateTime(2000, 1, 1,
                                    int.parse(evening.split(":")[0]), 0),
                                onDateTimeChanged: (val) {
                                  /*  setState(() {
                                evening = formatTime(val.hour, val.minute);
                              }); */
                                }),
                          ), // This will change to light theme.
                        );
                      },
                    ); */
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ThemeHeadlineSText("Nacht"),
                        ThemeHeadlineSText(night)
                      ],
                    ),
                  ),
                  onTap: () {
                    /* showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Theme(
                          data: ThemeData.light(),
                          child: Container(
                            height: 300,
                            color: Colors.black,
                            child: CupertinoDatePicker(
                                use24hFormat: true,
                                mode: CupertinoDatePickerMode.time,
                                backgroundColor: Colors.white,
                                initialDateTime: DateTime(2000, 1, 1,
                                    int.parse(night.split(":")[0]), 0),
                                onDateTimeChanged: (val) {
                                  /*        setState(() {
                                night = formatTime(val.hour, val.minute);
                              }); */
                                }),
                          ), // This will change to light theme.
                        );
                      },
                    ); */
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    ThemePrimaryButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await Hive.close();
                        Directory appDir = await getApplicationDocumentsDirectory();
                        await Directory(appDir.path).delete(recursive: true);

                        await prefs.setString("name", "");
                        await prefs.setString("image", "");

                        await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                      },
                      title: "I want to remove all my data",
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

formatTime(int hour, int minute) {
  if (minute < 10) {
    return ("$hour:${minute}0");
  } else {
    return ("$hour:$minute");
  }
}
