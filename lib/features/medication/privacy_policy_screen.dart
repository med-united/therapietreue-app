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
                Container(
                  width: double.infinity,
                  height: 100.0,
                  color: ThemeColors.secondaryColor,
                  child: Center(
                    child: Text(
                      'Address',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
            SizedBox(height: 16.0),
            Text(
              'Title 3',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Text 3',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Title 4',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Text 4',
              style: TextStyle(fontSize: 16.0),
            )
          ]),
        ),
      ),
    );
  }
}
