import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:majascan/majascan.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:therapietreu/apis/notifications/notification_api.dart';
import 'package:therapietreu/core/utils/debug_tools.dart';
import 'package:therapietreu/features/medication/domain/doctor.dart';
import 'package:therapietreu/features/medication/domain/medication.dart';
import 'package:therapietreu/features/medication/domain/medication_plan.dart';
import 'package:therapietreu/features/medication/medication_detail_screen.dart';
import 'package:therapietreu/features/medication/privacy_policy_screen.dart';
import 'package:therapietreu/features/medication/states/medication_plans_state.dart';
import 'package:therapietreu/features/medication/user_detail_screen.dart';
import 'package:therapietreu/ui/theme/theme_colors.dart';
import 'package:therapietreu/ui/theme/theme_constants.dart';
import 'package:therapietreu/ui/theme/theme_primary_button.dart';
import 'package:therapietreu/ui/theme/theme_text.dart';
import 'package:therapietreu/ui/theme/theme_textfield.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:therapietreu/features/medication/get_datamatrixcode_screen.dart';
import 'package:google_ml_vision/google_ml_vision.dart';

// import the io version
// use url launcher package
import '../user/domain/user.dart';
import 'dart:developer' as dev;

String path = "";
String name = "";

class MedicationTab extends ConsumerStatefulWidget {
  const MedicationTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MedicationTabState();
}

showFeatureDisabledDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: const RoundedRectangleBorder(
            borderRadius: ThemeConstants.borderRadius,
          ),
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ThemeHeadlineSText(
                    "Diese Funktion wird bald freigeschaltet",
                    textAlign: TextAlign.center,
                    maxLines: 5,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ThemePrimaryButton(
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                    title: 'Verstanden',
                    textColor: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        );
      });
}

class _MedicationTabState extends ConsumerState<MedicationTab> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final prefs = await SharedPreferences.getInstance();
      showDebugErrorToast("rebuild");

      if (!prefs.containsKey("showedIntro")) {
        prefs.setBool("showedIntro", true);

        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: const RoundedRectangleBorder(
                  borderRadius: ThemeConstants.borderRadius,
                ),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: ThemeHeadlineSText(
                          "Scannen Sie den Datamatrixcode Ihres Medikationsplans",
                          textAlign: TextAlign.center,
                          maxLines: 5,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: ThemePrimaryButton(
                          onPressed: () async {
                            Navigator.of(context).pop();
                          },
                          title: 'Verstanden',
                          textColor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              );
            });
      }
    });
    MedicationPlan? medPlan =
    ref.watch<MedicationPlan?>(medicationPlanStateProvider);
    getUserInfo() async {
      final prefs = await SharedPreferences.getInstance();
      Future.delayed(const Duration(seconds: 1));

      path = prefs.getString("image") ?? "";
      //showDebugErrorToast(path);
      name = prefs.getString("name") ?? "";

      return [prefs.getString("name") ?? "", prefs.getString("image") ?? ""];
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.info),
          color: ThemeColors.primaryColor,
          onPressed: () {
            _showPopupMenu(context);
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
        actions: const [
          /*   GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              DateTime now = DateTime.now();
              DateTime schedule = DateTime(now.year, now.month, now.day, 21);
              ref.read(localNotificationProvider).scheduleNotification(
                  schedule,
                  int.parse("0"),
                  "Therapietreue Wichtig!!",
                  "Medikationseinnahme: Test LOL");
              showDebugErrorToast("Done");
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Icon(
                Icons.settings,
                size: 32,
                color: ThemeColors.primaryColor,
              ),
            ),
          ) */
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: ThemeColors.secondaryColor,
              height: 1.0,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              future: getUserInfo(),
              initialData: const ["", ""],
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 32, top: 32, bottom: 32),
                        child: FittedBox(child: ThemeTitleLText("Hi $name")),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: CircleAvatar(
                          radius: 52,
                          backgroundColor: ThemeColors.primaryColor,
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                  builder: (context) =>
                                  const UserDetailScreen()))
                                  .then((value) => setState(() {
                                //   showDebugErrorToast(path);
                                FocusManager.instance.primaryFocus
                                    ?.unfocus();

                                path = path;
                              }));
                            },
                            child: CircleAvatar(
                              radius: 51,
                              backgroundImage:
                              FileImage(File(snapshot.data[1])),
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
                    )
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ThemeTextfield(
                      backgroundColor: const Color(0xffebf2f7),
                      prefix: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Icon(Icons.search,
                            size: 32,
                            color: ThemeColors.primaryColor.withAlpha(100)),
                      ),
                      hint: "Suche",
                      onEditingComplete: (text) {
                        showFeatureDisabledDialog(context);
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      controller: TextEditingController(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 32,
                  ),
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () async {

                      final filePath = await Navigator.of(context)
                          .push(MaterialPageRoute(
                          builder: (context) =>
                              GetDataMatrixCodeScreen()));

                      File file = File(filePath!);
                      final GoogleVisionImage visionImage = GoogleVisionImage.fromFile(file);

                      const BarcodeDetectorOptions options = BarcodeDetectorOptions(barcodeFormats: BarcodeFormat.dataMatrix);
                      final BarcodeDetector barcodeDetector = GoogleVision.instance.barcodeDetector(options);
                      print(barcodeDetector);

                      final List<Barcode> barcodes = await barcodeDetector.detectInImage(visionImage);
                      print(barcodes);

                      String? qrResult;

                      for (Barcode barcode in barcodes) {
                        qrResult = barcode.rawValue;
                        final BarcodeValueType valueType = barcode.valueType;
                        print("rawValue: $qrResult");
                        print("valueType: $valueType");
                      }

                      // The following line is used to test what is happening to a string read from a scanner
                      // String qrResult = "<MP xmlns=\"http://ws.gematik.de/fa/amtss/AMTS_Document/v1.6\" v=\"025\" U=\"B8B280E37E3B216CD3EF5193F854B2D0\" l=\"de-DE\"> <P g=\"Barbara\" f=\"KÃ¼hn\" b=\"19480207\" /> <A n=\"med.united Beatriz Correia\" e=\"beatriz.correia@testinggg.de\" t=\"2022-11-22T09:50:24\" /><S><M p=\"17954330\" a=\"SITAGLIPTIN/Metformin Heumann 50 mg/850 mg FTA\" d=\"1\" h=\"1\" /><M p=\"10792640\" a=\"MEDICOMP Drain Kompressen 7,5x7,5 cm steril\" /><M p=\"18060994\" a=\"SITAGAVIA 50 mg Filmtabletten\" m=\"1/2\" /> <M p=\"1016612\" a=\"NIFEDIPIN AbZ 20 mg Retardtabletten\" v=\"1\" /></S></MP>";

                      print("$qrResult§§§");

                      if (qrResult != null) {
                        final myTransformer = Xml2Json();
                        try {
                          myTransformer.parse(qrResult);
                        } catch (err) {
                          showDebugErrorToast(err.toString());
                        }

                        // Transform to JSON using GData
                        String json1 = myTransformer.toGData();

                        var json = jsonDecode(json1);

                        User user = User();
                        user = user.copyWith(
                            firstName: json['MP']['P']['g'],
                            lastName: json['MP']['P']['f'],
                            birthDate: json['MP']['P']['b']);

                        Doctor doctor = Doctor();
                        doctor = doctor.copyWith(
                            name: json['MP']['A']['n'],
                            street: json['MP']['A']['s'],
                            postalCode: int.parse(json['MP']['A']['z'] ?? "76137"),
                            phone: json['MP']['A']['p'],
                            city: json['MP']['A']['c'],
                            email: json['MP']['A']['e'],
                            date: json['MP']['A']['t']);

                        List<Medication> mediList = [];

                        if (json['MP']['S'] is List) {
                          for (var val1 in json['MP']['S']) {
                            if (val1['M'] is List) {
                              for (var val in val1['M']) {
                                if (val['p'] != null) {
                                  Medication medication = Medication();
                                  medication = medication.copyWith(
                                      pzn: val['p'].toString(),
                                      reason: val['r'],
                                      info: val['i'],
                                      amountInfo: val['t'],
                                      amountMorning:
                                      double.parse(val['m'] ?? '0'),
                                      amountEvening:
                                      double.parse(val['v'] ?? '0'),
                                      amountMidday:
                                      double.parse(val['md'] ?? '0'),
                                      amountNight:
                                      double.parse(val['n'] ?? '0'));

                                  mediList.add(medication);
                                }
                              }
                            } else {
                              Medication medication = Medication();
                              medication = medication.copyWith(
                                  pzn: val1['M']['p'].toString(),
                                  reason: val1['M']['r'],
                                  info: val1['M']['i'],
                                  amountInfo: val1['M']['t'],
                                  amountMorning:
                                  double.parse(val1['M']['m'] ?? '0'),
                                  amountEvening:
                                  double.parse(val1['M']['v'] ?? '0'),
                                  amountMidday:
                                  double.parse(val1['M']['md'] ?? '0'),
                                  amountNight:
                                  double.parse(val1['M']['n'] ?? '0'));
                              // showDebugErrorToast(medication.toString());

                              mediList.add(medication);
                            }
                          }
                        } else {
                          var val1 = json['MP']['S'];
                          if (val1['M'] is List) {
                            for (var val in val1['M']) {
                              if (val['p'] != null) {
                                Medication medication = Medication();
                                try {
                                  medication = medication.copyWith(
                                      pzn: val['p'].toString(),
                                      reason: val['r'],
                                      info: val['i'],
                                      amountInfo: val['t'],
                                      amountMorning:
                                      double.parse(val['m'] ?? '0'),
                                      amountEvening:
                                      double.parse(val['v'] ?? '0'),
                                      amountMidday:
                                      double.parse(val['md'] ?? '0'),
                                      amountNight:
                                      double.parse(val['n'] ?? '0'));

                                  mediList.add(medication);
                                } catch (err) {
                                  showDebugErrorToast(val.toString());
                                }
                              }
                            }
                          } else {
                            Medication medication = Medication();
                            medication = medication.copyWith(
                                pzn: val1['M']['p'].toString(),
                                reason: val1['M']['r'],
                                info: val1['M']['i'],
                                amountInfo: val1['M']['t'],
                                amountMorning:
                                double.parse(val1['M']['m'] ?? '0'),
                                amountEvening:
                                double.parse(val1['M']['v'] ?? '0'),
                                amountMidday:
                                double.parse(val1['M']['md'] ?? '0'),
                                amountNight:
                                double.parse(val1['M']['n'] ?? '0'));
                            // showDebugErrorToast(medication.toString());

                            mediList.add(medication);
                          }
                        }

                        bool isNumeric(String str) {
                          if (str == null) {
                            return false;
                          }
                          return double.tryParse(str) != null;
                        }

                        print("mediList: $mediList\n");

                        for (int k = 0; k < mediList.length; k++) {
                          // showDebugErrorToast("medication");
                          print("-----mediList[$k].pzn BEFORE RETRIEVING NAME AND PACKAGE SIZE:\n $mediList[k].pzn\n");
                          Response resp = await http.get(Uri.parse(
                              'https://medication.med-united.health/ajax/search/drugs/auto/?query=${mediList[k].pzn}'));

                          mediList[k] = mediList[k].copyWith(
                              name: jsonDecode(resp.body)["results"][0]
                              ["name"]);
                          mediList[k] = mediList[k].copyWith(
                              packageSize: isNumeric(
                                  jsonDecode(resp.body)["results"][0]
                                  ["packaging"]["quantity"])
                                  ? int.parse(jsonDecode(resp.body)["results"]
                              [0]["packaging"]["quantity"])
                                  : 0);
                          print("----- mediList[$k] AFTER RETRIEVING NAME AND PACKAGE SIZE:\n $mediList[k]");
                        }

                        MedicationPlan medicationPlan = MedicationPlan();
                        medicationPlan = medicationPlan.copyWith(
                            user: user, doctor: doctor, medication: mediList);

                        var medplanState =
                        ref.read(medicationPlanStateProvider.notifier);

                        if (medPlan != null) {
                          medplanState.updateMedicationPlan(
                              medicationPlan: medicationPlan);
                        } else {
                          medplanState.createMedicationPlan(
                              medicationPlan: medicationPlan);
                        }

                        for (int i = 0; i < 7; i++) {
                          print("for seven days");
                          DateTime now = DateTime.now();
                          print(now);

                          for (Medication medication
                          in medicationPlan.medication ?? []) {
                            DateTime? schedule;

                            if (medication.amountMorning != 0) {
                              dev.log("NOTIFICATION SET FOR MORNING");
                              print("fwfefrw$i");

                              schedule = DateTime(
                                  now.year, now.month, now.day + i, 8, 0);
                              ref
                                  .read(localNotificationProvider)
                                  .scheduleNotification(
                                  schedule,
                                  Random().nextInt(1000000),
                                  "Therapietreue Wichtig!!",
                                  "Medikationseinnahme: ${medication.amountMorning} x ${medication.name} jetzt einnehmen!");
                            }
                            if (medication.amountMidday != 0) {
                              dev.log("NOTIFICATION SET FOR MIDDAY");
                              schedule = DateTime(
                                  now.year, now.month, now.day + i, 18, 0);
                              ref
                                  .read(localNotificationProvider)
                                  .scheduleNotification(
                                  schedule,
                                  Random().nextInt(1000000),
                                  "Therapietreue Wichtig!!",
                                  "Medikationseinnahme: ${medication.amountMidday} x ${medication.name} jetzt einnehmen!");
                            }
                            if (medication.amountEvening != 0) {
                              dev.log("NOTIFICATION SET FOR EVENING");
                              schedule = DateTime(
                                  now.year, now.month, now.day + i, 18, 0);
                              ref
                                  .read(localNotificationProvider)
                                  .scheduleNotification(
                                  schedule,
                                  Random().nextInt(1000000),
                                  "Therapietreue Wichtig!!",
                                  "Medikationseinnahme: ${medication.amountEvening} x ${medication.name} jetzt einnehmen!");
                            }
                            if (medication.amountNight != 0) {
                              dev.log("NOTIFICATION SET FOR NIGHT");
                              schedule = DateTime(
                                  now.year, now.month, now.day + i, 21, 0);
                              ref
                                  .read(localNotificationProvider)
                                  .scheduleNotification(
                                  schedule,
                                  Random().nextInt(1000000),
                                  "Therapietreue Wichtig!!",
                                  "Medikationseinnahme: ${medication.amountNight} x ${medication.name} jetzt einnehmen!");
                            }
                          }
                        }

                        //showDebugErrorToast(medicationPlan.toString());
                      } else {
                        //showDebugErrorToast("No code was detected");
                      }
                    },
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                          color: ThemeColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: const Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: ThemeTitleMText("Medikamentenplan"),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Positioned.fill(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.white,
                          )),
                      Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                                color: ThemeColors.secondaryColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(32),
                                    bottomLeft: Radius.circular(32))),
                          )),
                    ],
                  ),
                ),
                Positioned.fill(
                  top: 16,
                  child: ListView.builder(
                    itemCount: (medPlan?.medication?.length ?? 0) + 2,
                    itemBuilder: (BuildContext context, int index) {
                      //showDebugErrorToast(index.toString());
                      Medication? medication;
                      if (index != (medPlan?.medication?.length ?? 0) &&
                          index != (((medPlan?.medication?.length ?? 0) + 1))) {
                        medication = (medPlan?.medication?.elementAt(index));
                      }

                      if (medication != null) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 8, top: 14, right: 32),
                          child: Container(
                            height: 80,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 32),
                                  child: CircularPercentIndicator(
                                      radius: 40.0,
                                      animation: true,
                                      animationDuration: 1000,
                                      lineWidth: 3.0,
                                      percent: (medication.packageSize == 0) ||
                                          (((medication.amountMorning ??
                                              0) +
                                              (medication
                                                  .amountMidday ??
                                                  0) +
                                              (medication
                                                  .amountEvening ??
                                                  0) +
                                              (medication
                                                  .amountNight ??
                                                  0)) ==
                                              0.0)
                                          ? 0.0
                                          : (medication
                                          .packageSize ??
                                          0 /
                                              (medication
                                                  .amountMorning ??
                                                  0) +
                                              (medication
                                                  .amountMidday ??
                                                  0) +
                                              (medication
                                                  .amountEvening ??
                                                  0) +
                                              (medication.amountNight ??
                                                  0)) /
                                          medication.packageSize!,
                                      center: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          ThemeBodyBText(
                                            (medication.packageSize == 0) ||
                                                (((medication
                                                    .amountMorning ??
                                                    0) +
                                                    (medication
                                                        .amountMidday ??
                                                        0) +
                                                    (medication
                                                        .amountEvening ??
                                                        0) +
                                                    (medication
                                                        .amountNight ??
                                                        0)) ==
                                                    0.0)
                                                ? "-"
                                                : (medication.packageSize ??
                                                0 /
                                                    (medication
                                                        .amountMorning ??
                                                        0) +
                                                    (medication
                                                        .amountMidday ??
                                                        0) +
                                                    (medication
                                                        .amountEvening ??
                                                        0) +
                                                    (medication
                                                        .amountNight ??
                                                        0))
                                                .toString(),
                                            textAlign: TextAlign.center,
                                          ),
                                          ThemeBodyLText(
                                            "Tage",
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      circularStrokeCap: CircularStrokeCap.butt,
                                      backgroundColor:
                                      ThemeColors.secondaryColor,
                                      progressColor:
                                      ThemeColors.secondaryColorDark),
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.5,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      ThemeBodyBText(
                                        medication.name ?? '-',
                                        maxLines: 2,
                                      ),
                                      if (formatMedicationPerDay(medication) !=
                                          0)
                                        ThemeBodyLText(
                                            "${formatMedicationPerDay(medication)} x täglich"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      } else if ((index !=
                          (medPlan?.medication?.length ?? 0))) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 8, top: 14, right: 32),
                          child: Container(
                            margin: const EdgeInsets.only(left: 32),
                            width: 100,
                            height: 80,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () async {
                                    showFeatureDisabledDialog(context);
                                    /* print("bhhb");
                                    authenticate(Uri uri, String clientId,
                                        List<String> scopes) async {
                                      print("bhhb");
                                      // create the client
                                      var issuer =
                                          await OpID.Issuer.discover(uri);
                                      var client =
                                          OpID.Client(issuer, clientId);

                                      // create a function to open a browser with an url
                                      urlLauncher(String url) async {
                                        if (await canLaunch(url)) {
                                          await launch(url, forceWebView: true);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      }

                                      // create an authenticator
                                      var authenticator = OpID.Authenticator(
                                          client,
                                          scopes: scopes,
                                          port: 4000,
                                          urlLancher: urlLauncher);

                                      // starts the authentication
                                      var c = await authenticator.authorize();

                                      // close the webview when finished
                                      closeWebView();

                                      // return the user info
                                      return await c.getUserInfo();
                                    }

                                    authenticate(
                                        Uri.parse(
                                            "https://id.med-united.health/realms/med-united"),
                                        "dipa",
                                        List<String>.of(['openid', 'profile'])); */
                                  },
                                  child: const CircleAvatar(
                                    radius: 40,
                                    backgroundColor: ThemeColors.primaryColor,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 48,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'E-Rezept ',
                                        style: ThemeConstants.primaryFont
                                            .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text: 'anfordern',
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'und Medikament \n',
                                        style: ThemeConstants.primaryFont
                                            .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text: 'liefern',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700)),
                                          TextSpan(
                                              text: ' lassen',
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.normal)),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 8, top: 14, right: 32),
                          child: Container(
                              margin: const EdgeInsets.only(left: 32),
                              width: 100,
                              height: 80,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () async {
                                      String? barcodeScanRes =
                                      await MajaScan.startScan(
                                          title: "PZN-Scanner",
                                          barColor: Colors.white,
                                          titleColor:
                                          ThemeColors.primaryColor,
                                          qRCornerColor: ThemeColors
                                              .secondaryColorDark,
                                          qRScannerColor:
                                          ThemeColors.secondaryColor,
                                          flashlightEnable: true,
                                          scanAreaScale: 0.7);

                                      print("----- barcodeScanRes: $barcodeScanRes");
                                      /*        await FlutterBarcodeScanner
                                              .scanBarcode(
                                                  "#ff6666",
                                                  "Abbrechen",
                                                  true,
                                                  ScanMode.BARCODE); */

                                      if (barcodeScanRes != "-1") {
                                        // showDebugErrorToast(barcodeScanRes);
                                        barcodeScanRes =
                                            barcodeScanRes?.replaceAll("-", "");
                                        Response resp = await http.get(Uri.parse(
                                            'https://medication.med-united.health/ajax/search/drugs/auto/?query=$barcodeScanRes'));

                                        print("----- resp2: $resp");

                                        if (jsonDecode(resp.body)["results"]
                                            .length !=
                                            0) {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MedicationDetailScreen(
                                                          jsonDecode(resp.body)[
                                                          "results"][0])));
                                        } else {
                                          showDebugErrorToast(
                                              "Not found Product");
                                        }
                                      }
                                    },
                                    child: Column(
                                      children: [
                                        ThemeBodyLText(
                                            "Medikament manuell hinzufügen"),
                                        const Icon(
                                          Icons.add,
                                          color: ThemeColors.secondaryColorDark,
                                          size: 48,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        );
                      }
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  void _showPopupMenu(BuildContext context) async {
    final selectedOption = await showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(0, 100, 0, 0),
      items: [
        PopupMenuItem(
          child: const Text('How to use the app'),
          value: 1,
        ),
        PopupMenuItem(
          child: SizedBox(
            width: 330,
            child: Row(
              children: [
                Text(
                  'About  ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 17,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 2.9),
                  child: Image.asset(
                  'assets/images/logo.png',),
                ),),
              ],
            ),
          ),
          value: 2,
        ),
        PopupMenuItem(
          child: const Text('Privacy policy'),
          value: 3,
        ),
      ],
    );

    switch (selectedOption) {
      case 1:
      // Do something when Option 1 is selected
        break;
      case 2:
      // Do something when Option 2 is selected
        break;
      case 3:
        await Navigator.of(context)
            .push(MaterialPageRoute(
            builder: (context) =>
                const PrivacyPolicyScreen()));
        break;
    }
  }
}

int formatMedicationPerDay(Medication medication) {
  int count = 0;
  if (medication.amountMorning != 0.0) {
    count += 1;
  }
  if (medication.amountMidday != 0.0) {
    count += 1;
  }
  if (medication.amountEvening != 0.0) {
    count += 1;
  }
  if (medication.amountNight != 0.0) {
    count += 1;
  }
  return count;
}