import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:therapietreu/core/utils/debug_tools.dart';
import 'package:therapietreu/features/medication/medication_tab.dart';
import 'package:therapietreu/ui/theme/theme_colors.dart';
import 'package:therapietreu/ui/theme/theme_navigation_bar.dart';
import 'package:therapietreu/ui/theme/theme_primary_button.dart';
import 'package:therapietreu/ui/theme/theme_scaffold.dart';
import 'package:therapietreu/ui/theme/theme_text.dart';
import 'package:therapietreu/ui/theme/theme_textfield.dart';

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
        navigationBar: ThemeNavigationBar(
          context,
          title: "",
          leading: [
            Material(
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 32, left: 32, top: 32, bottom: 32),
                child: Material(
                  elevation: 2,
                  shape: CircleBorder(),
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
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    ThemeTextfield(
                      padding: EdgeInsets.all(8.0),
                      backgroundColor: const Color(0xffebf2f7),
                      hint: "Name",
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
                height: 32,
              ),
              ThemeHeadlineSText("Benachrichtigungszeiten"),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.all(8.0),
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
