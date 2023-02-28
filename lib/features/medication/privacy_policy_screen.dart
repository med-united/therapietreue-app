import 'package:flutter/material.dart';

import '../../ui/theme/theme_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          width: MediaQuery
              .of(context)
              .size
              .width * 0.3,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Datenschutzerklärung Therapietreue.App',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Einleitung',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Gemäß § 13 Absatz 1 Telemediengesetz (TMG) hat der Anbieter eines Teledienstes seine Nutzenden zu Beginn des Nutzungsvorgangs über Art, Umfang und Zwecke der Erhebung und Verwendung personenbezogener Daten in allgemein verständlicher Form zu unterrichten.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Die Therapietreue.App wird von der Incentergy GmbH, Achenseeweg 50, 12209 Berlin, Deutschland (“Incentergy GmbH” oder “wir”) bereitgestellt. Wir sind Datenverantwortliche für die Verarbeitung Ihrer personenbezogenen Daten über die Therapietreue.App. Die Therapietreue.App ist ein Medizinprodukt der Klasse 1 nach gemäß Artikel 2 Nr.1 MDR.  Der Schutz Ihrer personenbezogenen Daten ist für uns von größter Bedeutung. An dieser Stelle möchten wir Sie daher über den Datenschutz bei der Incentergy GmbH informieren. Diese Datenschutzerklärung bezieht sich ausschließlich auf die Nutzung der Therapietreue.App.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Wir verpflichten uns, die von Ihnen bereitgestellten Informationen jederzeit mit größter Sorgfalt, größtem Verantwortungsgefühl und unter Einhaltung der geltenden datenschutzrechtlichen Bestimmungen zu behandeln.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '1.1 Verantwortliche Stellen und Kontakt',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Verantwortlich für die Verarbeitung Ihrer personenbezogenen Daten ist die',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Container(
              width: double.infinity,
              height: 120.0,
              color: ThemeColors.secondaryColor,
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                    children: [Text(
                      'Incentergy GmbH\nAchenseeweg 50\nD-12209 Berlin\nTelefon\n+49 – 173 632 2621\nE-Mail info@incentergy.de\t\t\t\t\t',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                      Text(
                        'Sitz der Gesellschaft:\nBerlin – Handelsregister\nAmtsgericht Berlin\n(Charlottenburg)\nHRB214370\nUSt-IdNr: DE301069501',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Geschäftsführer:\nManuel Blechschmidt, David Matthaei',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Generelle Anfragen zum Thema „Datenschutz” richten Sie bitte an folgendes Postfach: datenschutz@incentergy.de',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '2. Verarbeitungstätigkeiten und Art und Zweck der personenbezogenen Datennutzung',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Wir verarbeiten bei der Nutzung unserer Services personenbezogene Daten. Personenbezogene Daten sind alle Informationen. die sich auf eine identifizierte oder identifizierbare Person beziehen Art. 4 Abs.1 DSGVO.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Im folgenden Abschnitt beschreiben wir demgemäß die Verarbeitung Art. 4 Abs.2 DSGVO solcher Daten, die Ihnen oder Dritten zugeordnet werden können.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '2.1 Datenverarbeitung bei der Nutzung der Therapietreue.App',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Bei der erstmaligen Nutzung der App wird das „Onboarding“ mit dem Akzeptieren der AGB und dieser Datenschutzerklärung abgeschlossen. Der Google Playstore sammelt zu statistischen Auswertungen Daten zum Nutzungsverhalten (Rechtsgrundlage ist Art. 6 Abs. 1 lit. f DSGVO). Für diese Auswertungen wird das lediglich das verwendete Endgerät übermittelt.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '2.2 Die Grundfunktionen der Therapietreue.App Version 1.0',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Bei der Nutzung der Therapietreue.App werden die von Ihnen eingegeben Daten ausschließlich lokal auf dem Endgerät der Nutzenden gespeichert.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '2.2.1 Erstellung eines Nutzungskontos in der Therapietreue.App („Onboarding“)',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              '2.2.1.1 Kategorien Personenbezogener Daten',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '• Nutzungsname\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  WidgetSpan(
                    child: SizedBox(height: 24.0),
                  ),
                  TextSpan(
                    text: '• Profilfoto\n',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Text(
              '2.2.2 Erstellung eines Medikamentenmanagements',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              '2.2.2.1 Informationen aus dem bundeseinheitlichen Medikationsplan (BMP)',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '• Kamerazugriff erlauben\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  WidgetSpan(
                    child: SizedBox(height: 24.0),
                  ),
                  TextSpan(
                    text: '• Einzulesen per Datamatrixcode mithilfe des Kamerascans\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  WidgetSpan(
                    child: SizedBox(height: 24.0),
                  ),
                  TextSpan(
                    text: '• Beim Einscannen Ihres bundeseinheitlichen Medikationsplan (BMP) mit der Therapietreue.App, werden die im Medikationsplan enthaltenen Daten in der Therapietreue.App erfasst. Diese können je nach Umfang der im Datamatrixcode enthaltenen Daten u.a., aber nicht ausschließlich, umfassen:\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  WidgetSpan(
                    child: SizedBox(height: 24.0),
                  ),
                  TextSpan(
                    text: '     ◦ Allgemeine Daten (Vor- und Nachname, Geburtsdatum, Adresse)\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  WidgetSpan(
                    child: SizedBox(height: 24.0),
                  ),
                  TextSpan(
                    text: '     ◦ Medizinische Daten (Allergien, Unverträglichkeiten)\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  WidgetSpan(
                    child: SizedBox(height: 24.0),
                  ),
                  TextSpan(
                    text: '     ◦ Medikationsplan (Pharmazentralnummern, Medikamentennamen, Wirkstoffe, Darreichungsform, Dosierung, Einnahmezeiten, Hinweis der verordnenden ÄrztInnen, Grund der Einnahme)\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  WidgetSpan(
                    child: SizedBox(height: 24.0),
                  ),
                  TextSpan(
                    text: '     ◦ Informationen über die ausstellende Person (Name, Kontaktdaten)\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  WidgetSpan(
                    child: SizedBox(height: 24.0),
                  ),
                  TextSpan(
                    text: '• Diese Informationen werden lokal auf dem Endgerät gespeichert.\n',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Text(
              '2.2.3 Erinnerungen',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
              Text.rich(
                TextSpan(
                children: [
                TextSpan(
                text: '• Mitteilungen zulassen: Bei der Nutzung der Therapietreue.App, erinnern wir Sie zu festgelegten Zeiten an die in Ihrem BMP bestimmte Einnahme Ihrer Medikamente. Diese Erinnerungen werden lokal auf Ihrem Endgerät erzeugt. Es erfolgt keine Datenspeicherung auf den Servern der Incentergy GmbH.\n',
                style: TextStyle(fontSize: 16),
                ),
              ]),),
            Text(
              '2.3 Datenübermittlung an/von genutzten(m) Services',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              '2.3.1 Datenerhebung im Google Play Store bzw. Apple App Store',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Beim Herunterladen der App werden die erforderlichen Informationen an den Play Store bzw. Apple App Store übertragen, also insbesondere Nutzername, E-Mail-Adresse und Kundennummer Ihres Store-Accounts, Zeitpunkt des Downloads, Zahlungsinformationen und die individuelle Gerätekennziffer. Auf diese Datenerhebung haben wir keinen Einfluss und sind nicht dafür verantwortlich. Für nähere Informationen zu dieser Datenübertragung informieren Sie sich bitte direkt bei Ihrem Store-Anbieter.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Die Incentergy GmbH erhält keine Informationen über Ihren App Store- bzw. Google Play-Account und auch keine Zahlungsdaten.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '2.3.2 Nutzung der Medikamenten-Datenbank (ABDA-Datenbank)',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Wenn Sie eine Suche in der Medikamenten-Datenbank der Therapietreue.App durchführen, werden die von Ihnen hierzu eingegebenen Daten an den Datenbank-Server der Incentergy GmbH gesendet.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Beim Scan Ihres BMP werden die darin hinterlegten Daten aus der Datenbank abgerufen und die Ergebnisse aus der Abfrage über den Datenbank-Server der Incentergy GmbH zurück an Ihr Endgerät gesendet.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Die Anfragen, Ergebnisse sowie die dabei übertragene IP-Adresse werden von unserem Datenbank-Server nicht gespeichert. Eine Verarbeitung erfolgt im Übrigen nur wie in Abschnitt 2.4 beschrieben.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '2.4 Die Grundfunktionen der Therapietreue.App Version 1.0',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Nach dem Onboarding sendet die Therapietreue.App bei jeder Nutzungsaktion Informationen über das verwendete Endgerät an den Google Playstore.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Unser vollständiger Service ist gemäß der DSGVO.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Personenbezogene Daten die für die Nutzung der App notwendig sind, wie Informationen aus dem Medikationsplan, werden lokal auf dem Endgerät der Nutzenden gespeichert.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '3. Abschlussbestimmungen',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              '3.1 Zustimmung',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Beim Start der App können Sie der Verarbeitung Ihrer personenbezogenen Daten zustimmen.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Dies erfolgt durch die Bestätigung (Anklicken) der Kenntnisnahme der Datenschutzerklärung sowie durch Bestätigen (Anklicken) der Zustimmung zur Datenverarbeitung.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Rechtsgrundlage hierfür ist Art. 6 Abs. 1 lit. a und Art. 9 Abs. 2 lit. a DSGVO. Der Zweck der jeweiligen Verarbeitung ist in der Datenschutzerklärung zu den verschiedenen Bereichen jeweils genauer erklärt. Bitte beachten Sie, dass die Möglichkeit zur Nutzung der Therapietreue.App ohne Ihre Einwilligung eingeschränkt bzw. ausgeschlossen sein kann.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '3.2 Zustimmung',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Falls Sie eine Einwilligung zur Verarbeitung Ihrer Daten erteilt haben, können Sie diese jederzeit widerrufen. Ein solcher Widerruf beeinflusst die Zulässigkeit der Verarbeitung Ihrer personenbezogenen Daten, nachdem Sie ihn gegenüber uns ausgesprochen haben.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Der Widerruf ist in Schriftform an oben genannte Postadresse (siehe Abschnitt 1.1) oder per E-Mail an datenschutz@incentergy.de möglich. Bitte beachten Sie, dass die Möglichkeit zur Nutzung der Therapietreue.App nach dem Widerruf Ihrer Einwilligung eingeschränkt bzw. ausgeschlossen sein kann.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '3.3 Änderungen',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Wir behalten uns das Recht vor, diese Datenschutzrichtlinie zu ändern. Dies kann insbesondere bei Erweiterungen der Funktionalität der Therapietreue.App notwendig werden. Die jeweils aktuelle Fassung der Datenschutzerklärung finden Sie auf unserer Webseite unter https://med-united.health.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Änderungen der Datenschutzerklärung sind immer mit einem Versions-Update der App verbunden. Die neue Version der Therapietreue.App kann ohne die aktive Zustimmung zur aktualisierten Datenschutzerklärung nicht genutzt werden. In den Hinweisen zur neuen App-Version (im App Store oder in Google Play), welche vor dem Durchführen des Updates erreichbar sind, wird auf die geänderte Datenschutzerklärung hingewiesen.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Bevor Sie Informationen bzw. Berechtigungen übertragen, müssen Sie dies über Ihr Gerät in der App erlauben.',
              style: TextStyle(fontSize: 16.0),
            ),
          ]),
        ),
      ),
    );
  }
}
